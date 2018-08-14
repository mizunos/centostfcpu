FROM centos

LABEL author="Sakura Mizuno" \
        email="sakura.mizuno@gmail.com"

RUN yum -y update && \
yum -y install yum-utils && \
yum -y groupinstall development && \
yum -y install wget && \
yum -y install https://centos7.iuscommunity.org/ius-release.rpm && \
yum -y install python36u && \
yum -y install python36u-pip && \
pip3.6 install --upgrade pip && \
pip3.6 install tensorflow