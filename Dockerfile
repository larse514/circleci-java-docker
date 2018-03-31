FROM circleci/openjdk:8-jdk-browsers
MAINTAINER andrew.larsen@vernonsoftwaresolutoins.com

#Install docker
RUN set -x \
    VER="17.12.1-ce" \
    curl -L -o /tmp/docker-$VER.tgz https://download.docker.com/linux/static/stable/x86_64/docker-$VER.tgz \
    tar -xz -C /tmp -f /tmp/docker-$VER.tgz \
    mv /tmp/docker/* /usr/bin

WORKDIR /
