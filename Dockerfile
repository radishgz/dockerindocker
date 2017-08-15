FROM ubuntu:16.04  
RUN  apt-get update && \
 	apt-get install   -y  apt-transport-https     ca-certificates     curl     software-properties-common
RUN curl -fsSL https://download.docker.com/linux/ubuntu/gpg | apt-key add -
RUN apt-get update && \
 	 apt-get install -y docker-ce \
 	 apt-get   clean
CMD dockerd 
