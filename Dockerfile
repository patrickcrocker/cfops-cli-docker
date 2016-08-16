FROM ubuntu:14.04

ADD https://github.com/pivotalservices/cfops/releases/download/v3.0.0/cfops_binaries.tgz /tmp/cfops_binaries.tgz

RUN mkdir -p /usr/local/bin && \
    mkdir -p /tmp/cfops_binaries
    tar -xzf /tmp/cfops_binaries.tgz -C /tmp/cfops_binaries && \
    mv /tmp/cfops_binaries/pipeline/output/builds/linux64/cfops /usr/local/bin/. && \
    cfops version
