# GL_DevOps_intro

1.1. Pre-conditions:
- Git installed (you can check it by 'git --version');
- Python, pip are installed (python --version , pip -V); 
- 'psutil' is installed (see https://psutil.readthedocs.io). 

1.2. Clone repository as following:
git clone https://github.com/aikolesnikov/GL_DevOps_intro.git


For using of these scripts you will have 2 options:

2.1. Local scripts executing: 
./gl1_cpu_mem_info.sh cpu 

./gl1_cpu_mem_info.sh mem 

python ./gl_sysinfo.py 


2.2. Docker using.
Check that Docker is installed and ran (you can check it by 'sudo systemctl status docker').
Prepare docker images by:
- building it yourself by using of Dockerfile:
docker build -t gl_devop_image1 ./
or
- using of existent image from remote repository:
docker pull kaim/gl:gl_devop_image1

3.1. Run scripts by executing:

docker run -it kaim/gl:gl_devop_image1 /tmp/gl1_cpu_mem_info.sh cpu

docker run -it kaim/gl:gl_devop_image1 /tmp/gl1_cpu_mem_info.sh mem

docker run -it kaim/gl:gl_devop_image1 /usr/bin/python /tmp/gl_sysinfo.py


(i) for any questions/comments please contact artyom.kolesnikov@gmail.com
