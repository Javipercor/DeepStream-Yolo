FROM ubuntu:20.04

# Install Python 3.9
RUN apt-get update && \
    apt-get install -y software-properties-common && \
    add-apt-repository ppa:deadsnakes/ppa && \
    apt-get update
RUN apt-get install python3.9 python3-pip -y
RUN apt-get install libgl1-mesa-glx libglib2.0-0 git wget tzdata -y

ADD requirements_yolov5.txt /
RUN pip3 install -r requirements_yolov5.txt

 