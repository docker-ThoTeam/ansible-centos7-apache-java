FROM centos:7

RUN yum makecache fast && \
    yum update -y && \
    yum install -y \
        java-1.8.0-openjdk-headless \
        httpd \
        python \
        sudo \
        yum-plugin-ovl \
        bash \
        crontabs \
        rsync \
        policycoreutils \
        which && \
    sed -i 's/plugins=0/plugins=1/g' /etc/yum.conf && \
    yum clean all;
