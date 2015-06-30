## -*- docker-image-name: "armbuild/scw-app-openproject:latest" -*-
FROM armbuild/scw-distrib-ubuntu:trusty
MAINTAINER Scaleway <opensource@scaleway.com> (@scaleway)


# Prepare rootfs for image-builder
RUN /usr/local/sbin/builder-enter


# Install packages
RUN apt-get -q update \
 && apt-get -y -q upgrade \
 && apt-get install -y -q \
        build-essential \
        curl \
        git \
        libgraphviz-dev \
        libmagickcore-dev \
        libmagickcore5-extra \
        libmagickwand-dev \
        libmysqlclient-dev \
        libpq-dev \
        libreadline-dev \
        libsqlite3-dev \
        libssl-dev \
        libxml2-dev \
        libxslt1-dev \
        libyaml-0-2 \
        libyaml-dev \
        memcached \
        openssh-server \
        pwgen \
        python-setuptools \
        ruby-dev \
        subversion \
        sudo \
        vim \
        wget \
        zlib1g-dev \
 && apt-get clean


# Clean rootfs from image-builder
RUN /usr/local/sbin/builder-leave
