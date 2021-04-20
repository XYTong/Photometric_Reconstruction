//#include "stdafx.h"
#include<bits/stdc++.h>
#include "opencv2/opencv.hpp"
using namespace std;
using namespace cv;
int main()
{
 Mat left = imread("cubel.jpg", IMREAD_GRAYSCALE);
 Mat right = imread("cuber.jpg", IMREAD_GRAYSCALE);
 Mat disp;
 int mindisparity = 0;
 int ndisparities = 64;  
 int SADWindowSize = 5; 
 //SGBM
 cv::Ptr<cv::StereoSGBM> sgbm = cv::StereoSGBM::create(mindisparity, ndisparities, SADWindowSize);
 int P1 = 8 * left.channels() * SADWindowSize* SADWindowSize;
 int P2 = 10 * left.channels() * SADWindowSize* SADWindowSize;
 sgbm->setP1(P1);
 sgbm->setP2(P2);
 sgbm->setPreFilterCap(15);
 sgbm->setUniquenessRatio(10);
 sgbm->setSpeckleRange(2);
 sgbm->setSpeckleWindowSize(100);
 sgbm->setDisp12MaxDiff(1);
 //sgbm->setMode(cv::StereoSGBM::MODE_HH);
 sgbm->compute(left, right, disp);
 disp.convertTo(disp, CV_32F, 1.0 / 16);                //divided by 16 to get the real value
 Mat disp8U = Mat(disp.rows, disp.cols, CV_8UC1);       //show
 normalize(disp, disp8U, 0, 255, NORM_MINMAX, CV_8UC1);
 imwrite("SGBM2.jpg", disp8U);
 //imshow("Disparity",disp8U);
 //waitKey();
 return 0;
}
