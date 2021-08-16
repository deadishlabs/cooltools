FROM alpine:latest

RUN apk add --update-cache bash \
    # Programming
    nodejs \
    python3 \
    py3-pip \
    ruby \
    openjdk11 \
    # Database clients
    mysql-client \
    postgresql-client \
    redis \
    # Editors
    nano \
    neovim \
    vim \
    # System tools
    htop \
    # Misc inet tools
    busybox-extras \
    curl \
    wget \
    iputils \
    bind-tools \
    bmon \
    nmap \
    tcpdump \
    mtr \
    snort \
    # SCM
    git \
    subversion \
    # Misc tools
    gzip \
    tar \
    screen \
    jq

# AWS
RUN pip install --upgrade awscli

# GCloud SDK
RUN curl -sSL https://sdk.cloud.google.com | bash

# Kubectl
RUN curl -LO https://storage.googleapis.com/kubernetes-release/release/v1.17.1/bin/linux/amd64/kubectl && chmod u+x kubectl && mv kubectl /usr/local/bin/kubectl

# Kafka Tools
RUN curl -LO https://mirrors.ocf.berkeley.edu/apache/kafka/2.8.0/kafka_2.13-2.8.0.tgz && tar xvzf kafka_2.13-2.8.0.tgz && rm -rf kafka_2.13-2.8.0.tgz

ENV PATH="/kafka_2.13-2.8.0/bin:${PATH}"

ADD cooltools.txt /var/cooltools.txt

CMD /usr/bin/tail -f /var/cooltools.txt
