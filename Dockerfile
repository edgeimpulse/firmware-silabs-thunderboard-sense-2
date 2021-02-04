# syntax = docker/dockerfile:experimental
FROM gregbreen/uncannier-thunderboard:gecko-sdk-suite-v2.7

WORKDIR /app

RUN apt update && apt install -y wget python
