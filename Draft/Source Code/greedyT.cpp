#include <iostream>
#include <pcl/common/common.h>
#include <pcl/point_types.h>
#include <pcl/io/pcd_io.h>
#include <pcl/io/ply_io.h>
#include <pcl/kdtree/kdtree_flann.h>
#include <pcl/features/normal_3d.h>
#include <pcl/surface/gp3.h>
#include <pcl/visualization/pcl_visualizer.h>
#include <boost/thread/thread.hpp>
#include <pcl/io/vtk_io.h>
using namespace pcl; 
using namespace std;
int
main (int argc, char** argv)
{
  // Load input file into a PointCloud<T> with an appropriate type
  pcl::PointCloud<pcl::PointXYZ>::Ptr cloud (new pcl::PointCloud<pcl::PointXYZ>);
  pcl::PCLPointCloud2 cloud_blob;
  pcl::io::loadPLYFile ("/home/xtong/Documents/workplace/py/exercise-2/out_aloe.ply", cloud_blob);
  pcl::fromPCLPointCloud2(cloud_blob, *cloud);
  //* the data should be available in cloud
 
  // Normal estimation*
  pcl::NormalEstimation<pcl::PointXYZ, pcl::Normal> n;
  pcl::PointCloud<pcl::Normal>::Ptr normals (new pcl::PointCloud<pcl::Normal>);
  pcl::search::KdTree<pcl::PointXYZ>::Ptr tree (new pcl::search::KdTree<pcl::PointXYZ>);
  tree->setInputCloud (cloud);
  n.setInputCloud (cloud);
  n.setSearchMethod (tree);
  n.setKSearch (20);
  n.compute (*normals);
  //* normals should not contain the point normals + surface curvatures
 
  // Concatenate the XYZ and normal fields*
  pcl::PointCloud<pcl::PointNormal>::Ptr cloud_with_normals (new pcl::PointCloud<pcl::PointNormal>);//
  pcl::concatenateFields (*cloud, *normals, *cloud_with_normals);
  //* cloud_with_normals = cloud + normals
 
  // Create search tree*
  pcl::search::KdTree<pcl::PointNormal>::Ptr tree2 (new pcl::search::KdTree<pcl::PointNormal>);
  tree2->setInputCloud (cloud_with_normals);
 
  // Initialize objects
  pcl::GreedyProjectionTriangulation<pcl::PointNormal> gp3;
  pcl::PolygonMesh triangles;
 
  // Set the maximum distance between connected points (maximum edge length)
  gp3.setSearchRadius (0.025);         
 
  // Set typical values for the parameters
  gp3.setMu (2.5);                     
  gp3.setMaximumNearestNeighbors (100);
  gp3.setMaximumSurfaceAngle(M_PI/4);  
  gp3.setMinimumAngle(M_PI/18);       
  gp3.setMaximumAngle(2*M_PI/3);      
  gp3.setNormalConsistency(false);   
 
  // Get result
  gp3.setInputCloud (cloud_with_normals);
  gp3.setSearchMethod (tree2);           
  gp3.reconstruct (triangles);          
  cout << "finish" << endl;
  //io::savePLYFile("out_triangle.ply",triangles);
 // std::cout << triangles;
  // Additional vertex information
  std::vector<int> parts = gp3.getPartIDs();
  
  std::vector<int> states = gp3.getPointStates();
  boost::shared_ptr<pcl::visualization::PCLVisualizer> viewer (new pcl::visualization::PCLVisualizer ("3D Viewer"));
  viewer->setBackgroundColor (0, 0, 0);
  viewer->addPolygonMesh(triangles,"my");
 
  viewer->addCoordinateSystem (1.0);
  viewer->initCameraParameters ();
  while (!viewer->wasStopped ())
  {
    viewer->spinOnce (100);
    boost::this_thread::sleep (boost::posix_time::microseconds (100000));
  }
 
  // Finish
  io::savePLYFile("out_triangle.ply",triangles);

  return (0);
}
