# Base image
FROM resin/rpi-raspbian

# Set the maintainer
MAINTAINER Cesar Chavez <cesar.a.chavez@gmail.com>

# Enable systemd init system
ENV INITSYSTEM on

# Install required Linux packages
RUN apt-cache policy
RUN apt-get update && apt-get install -yq \
 # python and python tools
 python \
 python-dev \
 python-pip \
 nano \
 # crypto miner build
 automake \
 autoconf \
 pkg-config \
 libcurl4-openssl-dev \
 libjansson-dev \
 libssl-dev \
 libgmp-dev \
 make \
 g++ \
 git \
 libgmp-dev && \
 # Cleanup
 apt-get clean && \
 rm -rf /var/lib/apt/lists/*

# Install required Python packages
RUN pip install --upgrade pip
RUN pip install -U \
 arrow \
 pyyaml \
 requests

# Set the working directory
WORKDIR /usr/src/app

# Copy everything into the container
COPY . ./

# Start application
CMD ["bash", "start.sh"]