FROM centos:centos7
LABEL maintainer="smcgeown@vmware.com"

ADD ca-trust /etc/pki/ca-trust/source/anchors/
ADD VERSION .

RUN yum update -y && yum -y install \
        curl wget unzip git ca-certificates && \
        update-ca-trust force-enable && \
        update-ca-trust extract