FROM circleci/openjdk:8-jdk-browsers
MAINTAINER andrew.larsen@vernonsoftwaresolutoins.com
#install nodejs
RUN curl -sL https://deb.nodesource.com/setup_9.x | sudo -E bash -
RUN sudo apt-get install -y nodejs

#Install newman 
RUN sudo npm install newman -g

#Install docker
RUN set -x \
    VER="17.12.1-ce" \
    curl -L -o /tmp/docker-$VER.tgz https://download.docker.com/linux/static/stable/x86_64/docker-$VER.tgz \
    tar -xz -C /tmp -f /tmp/docker-$VER.tgz \
    mv /tmp/docker/* /usr/bin

WORKDIR /
