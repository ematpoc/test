FROM ubuntu:18.04


RUN apt-get clean 
RUN apt-get update -y 
RUN apt-get install -y software-properties-common
RUN add-apt-repository ppa:deadsnakes/ppa
RUN apt-get install -y python3
RUN apt-get update -y 
RUN apt-get install -y  python3-pip
RUN python3 --version
RUN pip3 install flask


# EXPOSE 50000 10000

COPY ./hello.py  hello.py
CMD python3 hello.py