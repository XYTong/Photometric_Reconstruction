#  Photometric_Reconstruction：Build the whole working pipeline of photometric reconstruction on Server using Docker
This is general working pipeline for photometric reconstruction and the output would be 3D-models from images and an associate Apps which can show the 
models in mixed reality. By using [openMVG](https://github.com/openMVG/openMVG), [openMVS](https://github.com/cdcseacave/openMVS) and docker image technic, 
users can easily implement it without concern about the correlations of dependencies. Using Dockerfile it build the whole project of working pipeline on a server. \\

## How to use
### upload
First, visit http://xiangyutong.makelove.expert:2020/ or http://46.101.142.166:2020 as the same.
Then it comes two buttons, click  **select** to select the image and then click **submit** to upload. It is highly recommended to first use the images in the folder photogrammetric-reconstruction-ar/Draft/Source Code/result/reconstruction_result_bench, 1.jpg to 17.jpg. As the weak knowledges of the author on frontend, the website is not so stable and robust. Please do not multiple click the same button, otherwise it might lead to a crash, just select one and submit one untill all the images uploaded. Then click the button **done**, it will turn to another site for starting the reconstruction.\\

### Starting reconstruction
in the new site, click the buttion **Start**, it will then start the photometric reconstruction in the backend from the images you upload. As the performance of the server the author rented is not so good, it costs nearly 1 min to finished the whole processes and then turn to the site of **download**.

### Download your result
in the site of Download, just click the button **download** to get your result(.ply format) and you can use meshlab on PC to view it or ViewER in google play store for Android. If this app was not working, try to get other common viewer on the App market.

### Notice
This web is not stable and please make sure that follow the steps correctly and don't do any other actions. The author might complete the web server to make it more stable and robust to use in the future.

## Creat ur own server to compute the reconstruction
If you have a server supporting docker, then just type the command `docker pull xytong/ubuntu_docker` in root mode of your server, it will pull the image of the working pipeline made by the author to local of your server. Typing the command `docker run -ti -p 2020:2020 xytong/ubuntu_docker /bin/bash` to run a container of this image. Inside the container, find the folder named **server**(/opt/openMVG/server) and enter, typing `python3 main.py` to start the server inside the docker. As the **port 2020** of the container is mapping to the **port 2020** of your server, just visit **your_server_IP + :2020** to view the website and then use the function of reconstruction.

## Deploy using k8s
'kubectl create -f pod.yml'  
'kubectl create -f svc.yml'
