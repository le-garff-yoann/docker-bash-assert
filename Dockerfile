FROM centos:7

LABEL maintainer="pe.weeble@yahoo.fr"

RUN \
    yum install -y epel-release && \
    yum install -y git which jq && \
    curl -Lo- "https://raw.githubusercontent.com/bpkg/bpkg/master/setup.sh" | bash && \
    bpkg install lehmannro/assert.sh -g

ENTRYPOINT [ "assert.sh" ]

