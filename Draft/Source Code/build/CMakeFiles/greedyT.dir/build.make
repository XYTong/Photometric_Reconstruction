# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.14

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list


# Suppress display of executed commands.
$(VERBOSE).SILENT:


# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/xtong/Documents/workplace/py/exercise-2

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/xtong/Documents/workplace/py/exercise-2/build

# Include any dependencies generated for this target.
include CMakeFiles/greedyT.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/greedyT.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/greedyT.dir/flags.make

CMakeFiles/greedyT.dir/greedyT.cpp.o: CMakeFiles/greedyT.dir/flags.make
CMakeFiles/greedyT.dir/greedyT.cpp.o: ../greedyT.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/xtong/Documents/workplace/py/exercise-2/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/greedyT.dir/greedyT.cpp.o"
	/usr/lib64/ccache/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/greedyT.dir/greedyT.cpp.o -c /home/xtong/Documents/workplace/py/exercise-2/greedyT.cpp

CMakeFiles/greedyT.dir/greedyT.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/greedyT.dir/greedyT.cpp.i"
	/usr/lib64/ccache/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/xtong/Documents/workplace/py/exercise-2/greedyT.cpp > CMakeFiles/greedyT.dir/greedyT.cpp.i

CMakeFiles/greedyT.dir/greedyT.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/greedyT.dir/greedyT.cpp.s"
	/usr/lib64/ccache/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/xtong/Documents/workplace/py/exercise-2/greedyT.cpp -o CMakeFiles/greedyT.dir/greedyT.cpp.s

# Object files for target greedyT
greedyT_OBJECTS = \
"CMakeFiles/greedyT.dir/greedyT.cpp.o"

# External object files for target greedyT
greedyT_EXTERNAL_OBJECTS =

greedyT: CMakeFiles/greedyT.dir/greedyT.cpp.o
greedyT: CMakeFiles/greedyT.dir/build.make
greedyT: /usr/lib64/libboost_system.so
greedyT: /usr/lib64/libboost_filesystem.so
greedyT: /usr/lib64/libboost_thread.so
greedyT: /usr/lib64/libboost_date_time.so
greedyT: /usr/lib64/libboost_iostreams.so
greedyT: /usr/lib64/libboost_serialization.so
greedyT: /usr/lib64/libboost_chrono.so
greedyT: /usr/lib64/libboost_atomic.so
greedyT: /usr/lib64/libboost_regex.so
greedyT: /usr/lib64/libpcl_common.so
greedyT: /usr/lib64/libpcl_octree.so
greedyT: /usr/lib64/libOpenNI.so
greedyT: /usr/lib64/libfreetype.so
greedyT: /usr/lib64/libz.so
greedyT: /usr/lib64/libexpat.so
greedyT: /usr/lib64/libjpeg.so
greedyT: /usr/lib64/libpng.so
greedyT: /usr/lib64/libtiff.so
greedyT: /usr/lib64/libpython2.7.so
greedyT: /usr/lib64/vtk/libvtkWrappingTools.a
greedyT: /usr/lib64/libhdf5.so
greedyT: /usr/lib64/libsz.so
greedyT: /usr/lib64/libdl.so
greedyT: /usr/lib64/libm.so
greedyT: /usr/lib64/libhdf5_hl.so
greedyT: /lib64/libnetcdf_c++.so
greedyT: /lib64/libnetcdf.so
greedyT: /usr/lib64/libxml2.so
greedyT: /usr/lib64/libtheoraenc.so
greedyT: /usr/lib64/libtheoradec.so
greedyT: /usr/lib64/libogg.so
greedyT: /usr/lib64/libjsoncpp.so
greedyT: /usr/lib64/libpcl_io.so
greedyT: /usr/lib64/libflann_cpp.so
greedyT: /usr/lib64/libpcl_kdtree.so
greedyT: /usr/lib64/libpcl_search.so
greedyT: /usr/lib64/libpcl_sample_consensus.so
greedyT: /usr/lib64/libpcl_filters.so
greedyT: /usr/lib64/libpcl_features.so
greedyT: /usr/lib64/libpcl_ml.so
greedyT: /usr/lib64/libpcl_segmentation.so
greedyT: /usr/lib64/libpcl_visualization.so
greedyT: /usr/lib64/libqhull_p.so
greedyT: /usr/lib64/libpcl_surface.so
greedyT: /usr/lib64/libpcl_registration.so
greedyT: /usr/lib64/libpcl_keypoints.so
greedyT: /usr/lib64/libpcl_tracking.so
greedyT: /usr/lib64/libpcl_recognition.so
greedyT: /usr/lib64/libpcl_stereo.so
greedyT: /usr/lib64/libpcl_apps.so
greedyT: /usr/lib64/libpcl_outofcore.so
greedyT: /usr/lib64/libpcl_people.so
greedyT: /usr/lib64/libboost_system.so
greedyT: /usr/lib64/libboost_filesystem.so
greedyT: /usr/lib64/libboost_thread.so
greedyT: /usr/lib64/libboost_date_time.so
greedyT: /usr/lib64/libboost_iostreams.so
greedyT: /usr/lib64/libboost_serialization.so
greedyT: /usr/lib64/libboost_chrono.so
greedyT: /usr/lib64/libboost_atomic.so
greedyT: /usr/lib64/libboost_regex.so
greedyT: /usr/lib64/libqhull_p.so
greedyT: /usr/lib64/libOpenNI.so
greedyT: /usr/lib64/libflann_cpp.so
greedyT: /usr/lib64/libfreetype.so
greedyT: /usr/lib64/libz.so
greedyT: /usr/lib64/libexpat.so
greedyT: /usr/lib64/vtk/libvtkDomainsChemistryOpenGL2.so.1
greedyT: /usr/lib64/libjpeg.so
greedyT: /usr/lib64/libpng.so
greedyT: /usr/lib64/libtiff.so
greedyT: /usr/lib64/vtk/libvtkFiltersFlowPaths.so.1
greedyT: /usr/lib64/vtk/libvtkFiltersGeneric.so.1
greedyT: /usr/lib64/vtk/libvtkFiltersHyperTree.so.1
greedyT: /usr/lib64/vtk/libvtkFiltersParallelImaging.so.1
greedyT: /usr/lib64/vtk/libvtkFiltersPoints.so.1
greedyT: /usr/lib64/vtk/libvtkFiltersProgrammable.so.1
greedyT: /usr/lib64/vtk/libvtkFiltersPython.so.1
greedyT: /usr/lib64/libpython2.7.so
greedyT: /usr/lib64/vtk/libvtkWrappingPython27Core.so.1
greedyT: /usr/lib64/vtk/libvtkWrappingTools.a
greedyT: /usr/lib64/vtk/libvtkFiltersSMP.so.1
greedyT: /usr/lib64/vtk/libvtkFiltersSelection.so.1
greedyT: /usr/lib64/vtk/libvtkFiltersStatisticsGnuR.so.1
greedyT: /usr/lib64/vtk/libvtkFiltersVerdict.so.1
greedyT: /usr/lib64/vtk/libvtkverdict.so.1
greedyT: /usr/lib64/vtk/libvtkGUISupportQtSQL.so.1
greedyT: /usr/lib64/vtk/libvtkIOAMR.so.1
greedyT: /usr/lib64/libhdf5.so
greedyT: /usr/lib64/libsz.so
greedyT: /usr/lib64/libdl.so
greedyT: /usr/lib64/libm.so
greedyT: /usr/lib64/libhdf5_hl.so
greedyT: /usr/lib64/vtk/libvtkIOEnSight.so.1
greedyT: /usr/lib64/vtk/libvtkIOExodus.so.1
greedyT: /lib64/libnetcdf_c++.so
greedyT: /lib64/libnetcdf.so
greedyT: /usr/lib64/vtk/libvtkIOExportOpenGL2.so.1
greedyT: /usr/lib64/vtk/libvtkIOImport.so.1
greedyT: /usr/lib64/vtk/libvtkIOInfovis.so.1
greedyT: /usr/lib64/libxml2.so
greedyT: /usr/lib64/vtk/libvtkIOLSDyna.so.1
greedyT: /usr/lib64/vtk/libvtkIOMINC.so.1
greedyT: /usr/lib64/vtk/libvtkIOMovie.so.1
greedyT: /usr/lib64/libtheoraenc.so
greedyT: /usr/lib64/libtheoradec.so
greedyT: /usr/lib64/libogg.so
greedyT: /usr/lib64/vtk/libvtkIOMySQL.so.1
greedyT: /usr/lib64/vtk/libvtkIOPLY.so.1
greedyT: /usr/lib64/vtk/libvtkIOParallel.so.1
greedyT: /usr/lib64/libjsoncpp.so
greedyT: /usr/lib64/vtk/libvtkIOParallelXML.so.1
greedyT: /usr/lib64/vtk/libvtkIOPostgreSQL.so.1
greedyT: /usr/lib64/vtk/libvtkIOTecplotTable.so.1
greedyT: /usr/lib64/vtk/libvtkIOVideo.so.1
greedyT: /usr/lib64/vtk/libvtkImagingMorphological.so.1
greedyT: /usr/lib64/vtk/libvtkImagingStatistics.so.1
greedyT: /usr/lib64/vtk/libvtkImagingStencil.so.1
greedyT: /usr/lib64/vtk/libvtkInteractionImage.so.1
greedyT: /usr/lib64/vtk/libvtkLocalExample.so.1
greedyT: /usr/lib64/vtk/libvtkRenderingContextOpenGL2.so.1
greedyT: /usr/lib64/vtk/libvtkRenderingImage.so.1
greedyT: /usr/lib64/vtk/libvtkRenderingLOD.so.1
greedyT: /usr/lib64/vtk/libvtkRenderingParallel.so.1
greedyT: /usr/lib64/vtk/libvtkRenderingQt.so.1
greedyT: /usr/lib64/vtk/libvtkRenderingVolumeOpenGL2.so.1
greedyT: /usr/lib64/vtk/libvtkTestingGenericBridge.so.1
greedyT: /usr/lib64/vtk/libvtkTestingIOSQL.so.1
greedyT: /usr/lib64/vtk/libvtkTestingRendering.so.1
greedyT: /usr/lib64/vtk/libvtkViewsContext2D.so.1
greedyT: /usr/lib64/vtk/libvtkViewsGeovis.so.1
greedyT: /usr/lib64/vtk/libvtkViewsQt.so.1
greedyT: /usr/lib64/vtk/libvtkWrappingJava.so.1
greedyT: /usr/lib64/libpcl_common.so
greedyT: /usr/lib64/libpcl_octree.so
greedyT: /usr/lib64/libpcl_io.so
greedyT: /usr/lib64/libpcl_kdtree.so
greedyT: /usr/lib64/libpcl_search.so
greedyT: /usr/lib64/libpcl_sample_consensus.so
greedyT: /usr/lib64/libpcl_filters.so
greedyT: /usr/lib64/libpcl_features.so
greedyT: /usr/lib64/libpcl_ml.so
greedyT: /usr/lib64/libpcl_segmentation.so
greedyT: /usr/lib64/libpcl_visualization.so
greedyT: /usr/lib64/libpcl_surface.so
greedyT: /usr/lib64/libpcl_registration.so
greedyT: /usr/lib64/libpcl_keypoints.so
greedyT: /usr/lib64/libpcl_tracking.so
greedyT: /usr/lib64/libpcl_recognition.so
greedyT: /usr/lib64/libpcl_stereo.so
greedyT: /usr/lib64/libpcl_apps.so
greedyT: /usr/lib64/libpcl_outofcore.so
greedyT: /usr/lib64/libpcl_people.so
greedyT: /usr/lib64/vtk/libvtkDomainsChemistry.so.1
greedyT: /usr/lib64/libpython2.7.so
greedyT: /usr/lib64/vtk/libvtkFiltersAMR.so.1
greedyT: /usr/lib64/vtk/libvtkIOExport.so.1
greedyT: /usr/lib64/vtk/libvtkRenderingGL2PSOpenGL2.so.1
greedyT: /usr/lib64/vtk/libvtkgl2ps.so.1
greedyT: /usr/lib64/libtheoraenc.so
greedyT: /usr/lib64/libtheoradec.so
greedyT: /usr/lib64/libogg.so
greedyT: /usr/lib64/vtk/libvtkexoIIc.so.1
greedyT: /lib64/libnetcdf_c++.so
greedyT: /lib64/libnetcdf.so
greedyT: /usr/lib64/vtk/libvtkIOGeometry.so.1
greedyT: /usr/lib64/vtk/libvtkIONetCDF.so.1
greedyT: /usr/lib64/vtk/libvtkIOSQL.so.1
greedyT: /usr/lib64/vtk/libvtksqlite.so.1
greedyT: /usr/lib64/vtk/libvtkFiltersParallel.so.1
greedyT: /usr/lib64/vtk/libvtkParallelCore.so.1
greedyT: /usr/lib64/vtk/libvtkIOLegacy.so.1
greedyT: /usr/lib64/vtk/libvtkFiltersTexture.so.1
greedyT: /usr/lib64/vtk/libvtkImagingMath.so.1
greedyT: /usr/lib64/vtk/libvtkGeovisCore.so.1
greedyT: /usr/lib64/vtk/libvtkproj4.so.1
greedyT: /usr/lib64/vtk/libvtkGUISupportQt.so.1
greedyT: /usr/lib64/vtk/libvtkRenderingOpenGL2.so.1
greedyT: /usr/lib64/vtk/libvtkglew.so.1
greedyT: /usr/lib64/libSM.so
greedyT: /usr/lib64/libICE.so
greedyT: /usr/lib64/libX11.so
greedyT: /usr/lib64/libXext.so
greedyT: /usr/lib64/libXt.so
greedyT: /usr/lib64/libQtGui.so
greedyT: /usr/lib64/libQtNetwork.so
greedyT: /usr/lib64/libQtCore.so
greedyT: /usr/lib64/vtk/libvtkViewsInfovis.so.1
greedyT: /usr/lib64/vtk/libvtkChartsCore.so.1
greedyT: /usr/lib64/vtk/libvtkRenderingContext2D.so.1
greedyT: /usr/lib64/vtk/libvtkFiltersImaging.so.1
greedyT: /usr/lib64/vtk/libvtkInfovisLayout.so.1
greedyT: /usr/lib64/vtk/libvtkInfovisCore.so.1
greedyT: /usr/lib64/vtk/libvtkViewsCore.so.1
greedyT: /usr/lib64/vtk/libvtkInteractionWidgets.so.1
greedyT: /usr/lib64/vtk/libvtkFiltersHybrid.so.1
greedyT: /usr/lib64/vtk/libvtkImagingGeneral.so.1
greedyT: /usr/lib64/vtk/libvtkImagingSources.so.1
greedyT: /usr/lib64/vtk/libvtkFiltersModeling.so.1
greedyT: /usr/lib64/vtk/libvtkInteractionStyle.so.1
greedyT: /usr/lib64/vtk/libvtkFiltersExtraction.so.1
greedyT: /usr/lib64/vtk/libvtkFiltersStatistics.so.1
greedyT: /usr/lib64/vtk/libvtkImagingFourier.so.1
greedyT: /usr/lib64/vtk/libvtkalglib.so.1
greedyT: /usr/lib64/vtk/libvtkImagingHybrid.so.1
greedyT: /usr/lib64/vtk/libvtkIOImage.so.1
greedyT: /usr/lib64/vtk/libvtkDICOMParser.so.1
greedyT: /usr/lib64/vtk/libvtkmetaio.so.1
greedyT: /usr/lib64/libz.so
greedyT: /usr/lib64/vtk/libvtkRenderingAnnotation.so.1
greedyT: /usr/lib64/vtk/libvtkImagingColor.so.1
greedyT: /usr/lib64/vtk/libvtkRenderingVolume.so.1
greedyT: /usr/lib64/vtk/libvtkImagingCore.so.1
greedyT: /usr/lib64/vtk/libvtkIOXML.so.1
greedyT: /usr/lib64/vtk/libvtkIOXMLParser.so.1
greedyT: /usr/lib64/vtk/libvtkIOCore.so.1
greedyT: /usr/lib64/vtk/libvtkRenderingLabel.so.1
greedyT: /usr/lib64/vtk/libvtkRenderingFreeType.so.1
greedyT: /usr/lib64/vtk/libvtkRenderingCore.so.1
greedyT: /usr/lib64/vtk/libvtkCommonColor.so.1
greedyT: /usr/lib64/vtk/libvtkFiltersGeometry.so.1
greedyT: /usr/lib64/vtk/libvtkFiltersSources.so.1
greedyT: /usr/lib64/vtk/libvtkFiltersGeneral.so.1
greedyT: /usr/lib64/vtk/libvtkCommonComputationalGeometry.so.1
greedyT: /usr/lib64/vtk/libvtkFiltersCore.so.1
greedyT: /usr/lib64/vtk/libvtkCommonExecutionModel.so.1
greedyT: /usr/lib64/vtk/libvtkCommonDataModel.so.1
greedyT: /usr/lib64/vtk/libvtkCommonTransforms.so.1
greedyT: /usr/lib64/vtk/libvtkCommonMisc.so.1
greedyT: /usr/lib64/vtk/libvtkCommonMath.so.1
greedyT: /usr/lib64/vtk/libvtkCommonSystem.so.1
greedyT: /usr/lib64/vtk/libvtksys.so.1
greedyT: /usr/lib64/libfreetype.so
greedyT: /usr/lib64/vtk/libvtkCommonCore.so.1
greedyT: CMakeFiles/greedyT.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/xtong/Documents/workplace/py/exercise-2/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable greedyT"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/greedyT.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/greedyT.dir/build: greedyT

.PHONY : CMakeFiles/greedyT.dir/build

CMakeFiles/greedyT.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/greedyT.dir/cmake_clean.cmake
.PHONY : CMakeFiles/greedyT.dir/clean

CMakeFiles/greedyT.dir/depend:
	cd /home/xtong/Documents/workplace/py/exercise-2/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/xtong/Documents/workplace/py/exercise-2 /home/xtong/Documents/workplace/py/exercise-2 /home/xtong/Documents/workplace/py/exercise-2/build /home/xtong/Documents/workplace/py/exercise-2/build /home/xtong/Documents/workplace/py/exercise-2/build/CMakeFiles/greedyT.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/greedyT.dir/depend

