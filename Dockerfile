# syntax = docker/dockerfile:experimental@sha256:3c244c0c6fc9d6aa3ddb73af4264b3a23597523ac553294218c13735a2c6cf79
FROM ubuntu:20.04

WORKDIR /app

ARG DEBIAN_FRONTEND=noninteractive

# APT packages
RUN apt update && apt install -y wget unzip python3 python3-pip openjdk-16-jre-headless git-lfs

# GCC ARM
RUN if [ $(uname -m) = "x86_64" ]; then export ARCH=x86_64; else export ARCH=aarch64; fi && \
    cd / && \
    wget https://developer.arm.com/-/media/Files/downloads/gnu-rm/10-2020q4/gcc-arm-none-eabi-10-2020-q4-major-$ARCH-linux.tar.bz2 && \
    tar xjf gcc-arm-none-eabi-10-2020-q4-major-$ARCH-linux.tar.bz2 && \
    echo "PATH=$PATH:/gcc-arm-none-eabi-10-2020-q4-major/bin" >> ~/.bashrc

# Gecko SDK
RUN GECKO_COMMIT=db4e90767174d467158d4c5249ba5be6ab9d9e83 && \
    cd / && \
    wget https://github.com/edgeimpulse/gecko_sdk/archive/${GECKO_COMMIT}.zip -O gecko.zip -q && \
    unzip -q gecko.zip && \
    mv gecko_sdk-${GECKO_COMMIT}/ gecko_sdk/

# SLC-CLI tool
RUN cd / && \
    wget https://cdn.edgeimpulse.com/build-system/slc_cli_linux_xg24.zip -q && \
    unzip -q slc_cli_linux_xg24.zip && \
    cd slc_cli && \
    pip3 install --user -r requirements.txt && \
    chmod +x slc

ENV PATH="/slc_cli:${PATH}"

RUN slc configuration --sdk /gecko_sdk/ && \
    slc signature trust --sdk /gecko_sdk/ && \ 
    slc configuration --gcc-toolchain /gcc-arm-none-eabi-10-2020-q4-major
