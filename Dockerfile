FROM alpine:latest

RUN apk add --update-cache bash \
    # Programming
    nodejs \
    nodejs-npm \
    python \
    py-pip \
    ruby \
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
    # SCM
    git \
    subversion \
    # Misc tools
    gzip \
    tar \
    less \
    tmux \
    screen \
    jq

# AWS
RUN pip install --upgrade awscli
    
# GCloud SDK
RUN curl -sSL https://sdk.cloud.google.com | bash

# Kubectl
RUN curl -LO https://storage.googleapis.com/kubernetes-release/release/v1.17.1/bin/linux/amd64/kubectl && chmod u+x kubectl && mv kubectl /usr/local/bin/kubectl

CMD ["bash"]