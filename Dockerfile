FROM centos:7

MAINTAINER Yoann Le Garff (le-garff-yoann) <pe.weeble@yahoo.fr>

RUN \
    yum install -y git && \
    curl -Lo- "https://raw.githubusercontent.com/bpkg/bpkg/master/setup.sh" | bash && \
    bpkg install lehmannro/assert.sh -g
