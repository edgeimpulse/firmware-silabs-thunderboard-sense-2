# syntax = docker/dockerfile:experimental
FROM nobi/simplicity-studio-5:gecko-sdk-v3.2

WORKDIR /app

RUN apt update && apt install -y wget unzip python3-pip python3-yaml
