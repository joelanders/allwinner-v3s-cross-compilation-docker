FROM ubuntu:24.04

RUN DEBIAN_FRONTEND=noninteractive \
  apt-get update \
  && apt-get install -y \
  build-essential \
  bison \
  flex \
  bc \
  libssl-dev \
  python3 \
  python-dev-is-python3 \
  python3-setuptools \
  gcc-arm-linux-gnueabihf \
  swig
