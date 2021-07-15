#Xiangyu Tong, June 20, 2021
# Use Ubuntu 18.04 (will be supported until April 2023)
FROM ubuntu:18.04

# Initialize the environment 
RUN apt update
RUN apt install -y cmake git vim

# Add openMVG binaries to path
ENV PATH $PATH:/opt/openMVG_Build/install/bin

# Get dependencies
RUN apt-get update && apt-get install -y \
  cmake \
  build-essential \
  graphviz \
  git \
  mercurial \
  coinor-libclp-dev \
  libceres-dev \
  libflann-dev \
  liblemon-dev \
  libjpeg-dev \
  libpng-dev \
  libtiff-dev \
  libglu1-mesa-dev \
  python-minimal; \
  apt-get autoclean && apt-get clean

# Clone the openvMVG repo
RUN mkdir /opt/openMVG
ADD . /opt/openMVG
RUN git clone https://github.com/openMVG/openMVG.git
RUN cd /opt/openMVG && git submodule update --init --recursive

# Build
RUN mkdir /opt/openMVG_Build; \
  cd /opt/openMVG_Build; \
  cmake -DCMAKE_BUILD_TYPE=RELEASE \
    -DCMAKE_INSTALL_PREFIX="/opt/openMVG_Build/install" \
    -DOpenMVG_BUILD_TESTS=ON \
    -DOpenMVG_BUILD_EXAMPLES=OFF \
    -DFLANN_INCLUDE_DIR_HINTS=/usr/include/flann \
    -DLEMON_INCLUDE_DIR_HINTS=/usr/include/lemon \
    -DCOINUTILS_INCLUDE_DIR_HINTS=/usr/include \
    -DCLP_INCLUDE_DIR_HINTS=/usr/include \
    -DOSI_INCLUDE_DIR_HINTS=/usr/include \
    ../openMVG/src; \
    make -j 4;

RUN cd /opt/openMVG_Build && make test && make install;

# Eigen (Known issues with eigen 3.3.7 as of 12/10/2019, so using this tested branch/commit instead) 
RUN cd /
RUN git clone -b 3.2 https://gitlab.com/libeigen/eigen
RUN mkdir eigen_build
RUN cd eigen_build &&\
    cmake . ../eigen &&\
    make && make install &&\
    cd ..
    
# Boost
RUN apt-get -y install libboost-iostreams-dev libboost-program-options-dev libboost-system-dev libboost-serialization-dev

# OpenCV
RUN DEBIAN_FRONTEND=noninteractive apt-get install -yq libopencv-dev

# CGAL
RUN apt-get -y install libcgal-dev libcgal-qt5-dev

# VCGLib
RUN git clone https://github.com/cdcseacave/VCG.git vcglib

# Build from stable release openMVS1.0
RUN git clone https://github.com/cdcseacave/openMVS.git --branch v1.0
RUN mkdir openMVS_build
RUN cd openMVS_build &&\
	cmake . ../openMVS -DCMAKE_BUILD_TYPE=Release -DVCG_ROOT=/vcglib

# Install OpenMVS library
RUN cd openMVS_build &&\
	make -j4 &&\
	make install
ENV PATH /usr/local/bin/OpenMVS:$PATH

# Dependencies of python server
RUN apt update
RUN apt-get install -y python3.8
RUN update-alternatives --install /usr/bin/python python /usr/bin/python2.7 1
RUN update-alternatives --install /usr/bin/python python /usr/bin/python3.8 2
RUN apt-get install -y python3-pip
RUN pip3 install Flask
EXPOSE 5000
CMD ["python","/opt/openMVG/server/main.py"]
