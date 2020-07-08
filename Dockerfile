FROM centos:8

RUN yum install -y python2 python38 \
                   epel-release \
                   make cmake \
                   git \
                   openssh-clients \
                   which \
                    unzip && \
    yum install -y ansible && \
    yum clean all

RUN alternatives --set python /usr/bin/python2

