# Dockerfile for Ensembl VEP + bcftools
# Used in the HS-Insight pipeline

FROM ubuntu:22.04

LABEL maintainer="Rotaru Ionut"

# Avoid interactive prompts during installation
ENV DEBIAN_FRONTEND=noninteractive

# Install dependencies
RUN apt-get update && \
    apt-get install -y \
    curl \
    unzip \
    git \
    gcc \
    zlib1g-dev \
    libbz2-dev \
    liblzma-dev \
    libncurses5-dev \
    libncursesw5-dev \
    libperl-dev \
    perl \
    bc \
    build-essential \
    wget \
    tabix \
    locales && \
    apt-get clean && rm -rf /var/lib/apt/lists/*

# Set locale for Perl
RUN locale-gen en_US.UTF-8
ENV LANG en_US.UTF-8
ENV LANGUAGE en_US:en
ENV LC_ALL en_US.UTF-8

# Install bcftools
RUN cd /opt && \
    git clone --branch=1.19 https://github.com/samtools/bcftools.git && \
    cd bcftools && \
    make && \
    make install

# Install Ensembl VEP (minimal setup for testing)
RUN mkdir -p /opt/vep && \
    cd /opt/vep && \
    curl -sL https://github.com/Ensembl/ensembl-vep/archive/release/110.zip -o vep.zip && \
    unzip vep.zip && \
    cd ensembl-vep-110 && \
    perl INSTALL.pl --NO_HTSLIB --NO_CACHE --NO_PLUGINS --NO_TEST

# Set working dir
WORKDIR /data

# Default command (override in pipeline)
CMD ["/bin/bash"]
