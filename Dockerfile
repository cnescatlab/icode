FROM openjdk:8u322-slim-buster AS base

ADD https://github.com/cnescatlab/i-CodeCNES/releases/download/v4.1.0/icode-4.1.0.zip /

RUN apt-get update -y && \
    apt-get install -y unzip && \
    unzip /icode-4.1.0.zip && \
    chmod +x /icode/icode

FROM openjdk:8u322-slim-buster

COPY --from=base /icode /usr/bin
    
LABEL maintainer="cnescatlab"
WORKDIR /src
