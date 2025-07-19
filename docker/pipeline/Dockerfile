# Dockerfile for Ensembl VEP 114.2 + bcftools (Best Practice)

FROM ubuntu:22.04

LABEL maintainer="Ionut Rotaru"

ENV DEBIAN_FRONTEND=noninteractive

# Install system dependencies and required Perl modules
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
    perl-modules \
    libdbi-perl \
    libdbd-mysql-perl \
    libmysqlclient-dev \
    bc \
    build-essential \
    wget \
    tabix \
    locales \
    bcftools \
    cpanminus && \
    apt-get clean && rm -rf /var/lib/apt/lists/*

# Set locale for Perl
RUN locale-gen en_US.UTF-8
ENV LANG en_US.UTF-8
ENV LANGUAGE en_US:en
ENV LC_ALL en_US.UTF-8

# Install bcftools via apt
RUN cpanm --notest \
    List::MoreUtils \
    Module::Build \
    DBI \
    DBD::mysql \
    JSON \
    LWP::Simple \
    LWP::Protocol::https \
    Try::Tiny

# Install latest Ensembl VEP (114.2)
RUN mkdir -p /opt/vep && \
    cd /opt/vep && \
    wget https://github.com/Ensembl/ensembl-vep/archive/refs/tags/release/114.2.zip -O vep.zip && \
    unzip vep.zip && \
    cd ensembl-vep-release-114.2 && \
    perl INSTALL.pl --NO_HTSLIB --NO_TEST && \
    printf '#!/bin/bash\nexport PERL5LIB=/opt/vep/ensembl-vep-release-114.2/modules${PERL5LIB:+:$PERL5LIB}\nexec /opt/vep/ensembl-vep-release-114.2/vep "$@"\n' > /usr/local/bin/vep && \
    chmod +x /usr/local/bin/vep

WORKDIR /data

CMD ["/bin/bash"]
