# strider-dind-slave
# VERSION 1.0.0
#
# An Arch Linux Strider slave with DinD

FROM logankoester/dind_archlinux
MAINTAINER Logan Koester <logan@logankoester.com>

# Prepare the system
RUN pacman -S --noprogressbar --noconfirm --needed nodejs npm git

# Setup workspace and user
RUN useradd -d /home/strider strider && \
  mkdir -p /home/strider/workspace && \
  chown -R strider /home/strider

# Get the slave
RUN npm install -g strider-docker-slave@1.*.*
CMD ["strider-docker-slave"]

WORKDIR /home/strider/workspace
USER strider
ENV HOME /home/strider
