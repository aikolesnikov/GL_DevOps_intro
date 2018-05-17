#Download base image ubuntu 16.04
FROM ubuntu:16.04

RUN apt-get update
RUN apt-get upgrade -y
RUN apt install python-pip -y 
RUN pip install psutil 

COPY gl1_cpu_mem_info.sh /tmp/gl1_cpu_mem_info.sh
COPY gl_sysinfo.py /tmp/gl_sysinfo.py


