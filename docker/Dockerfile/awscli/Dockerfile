FROM ubuntu:trusty
RUN sudo apt-get update \
    && apt-get install -y build-essential \
    && apt-get install -y git vim \
    && apt-get install -y wget curl
RUN sudo apt-get install -y python-dev python-pip \
    && apt-get install -y libyaml-dev
# not working, change to run install directly..
# RUN sudo pip install awscli --upgrade --user
RUN sudo pip install awscli
RUN sudo mkdir -p /work/aws/cli
WORKDIR /work/aws/cli
ADD awscliTest.sh /work/aws/cli

