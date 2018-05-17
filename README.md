# GL_DevOps_intro

Pre-conditions:
- Git installed (you can check it by 'git --version');
- Python, pip are installed (python --version , pip -V); 
- 'psutil' is installed (see https://psutil.readthedocs.io). 

1. Clone repository as following:
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

3. Run scripts by:
- Linux:
java -classpath ./target/classes/ process.Main
- Windows:
java -classpath \target\classes\ process.Main