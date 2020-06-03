FROM centos:centos7
LABEL maintainer="smcgeown@vmware.com"

RUN yum update -y && yum -y install \
        curl \
        wget \
        unzip \
        git
ADD VERSION .
