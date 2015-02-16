FROM cloudgear/ubuntu:14.04
MAINTAINER Georg Kunz, CloudGear <contact@cloudgear.net>

RUN apt-get update -q && apt-get install -yq --no-install-recommends \
        autoconf \
        ca-certificates \
        g++ \
        gcc \
        libc6-dev \
        make \
        patch \
        libbz2-dev \
        libcurl4-openssl-dev \
        libevent-dev \
        libffi-dev \
        libglib2.0-dev \
        libmysqlclient-dev \
        libncurses-dev \
        libpq-dev \
        libreadline-dev \
        libsqlite3-dev \
        libssl-dev \
        libxml2-dev \
        libxslt-dev \
        libyaml-dev \
        zlib1g-dev && \

    # clean up
    rm -rf /var/lib/apt/lists/* && \
    truncate -s 0 /var/log/*log
