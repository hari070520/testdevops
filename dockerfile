# custom hello world docker file
FROM docker.io/library/ubuntu:latest
MAINTAINER hari
RUN apt-get update
RUN apt-get install -y python3.7 python3-pip python3-venv
ADD hello.py /home/hello.py
WORKDIR /home
CMD python3 hello.py
