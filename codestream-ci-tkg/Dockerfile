FROM sammcgeown/codestream-ci:latest
LABEL maintainer="smcgeown@vmware.com"

ENV GO_Version 1.14
ENV GOVC_Version v0.22.1

COPY kubernetes.repo /etc/yum.repos.d/

#RUN     yum update -y

# Install GO
RUN     wget --quiet https://dl.google.com/go/go$GO_Version.linux-amd64.tar.gz && \
        tar -C /usr/local -xzf go$GO_Version.linux-amd64.tar.gz && \
        export PATH=$PATH:/usr/local/go/bin && \
        source ~/.bash_profile

# Download and Extract GOVC
RUN     wget --quiet https://github.com/vmware/govmomi/releases/download/$GOVC_Version/govc_linux_amd64.gz && \
        gunzip -fq govc_linux_amd64.gz && \
        mv govc_linux_amd64 govc && \
        chown root govc && \
        chmod ug+r+x govc && \
        mv govc /usr/local/bin/.

# Install jq
RUN     yum -y install https://dl.fedoraproject.org/pub/epel/epel-release-latest-7.noarch.rpm && \
        yum install jq -y

# Install NPM
RUN     curl -sL https://rpm.nodesource.com/setup_13.x | bash - && \
        yum install -y nodejs

# Install vmw-cli
RUN     npm install vmw-cli --global

#RUN     yum install -y kubectl