FROM registry.access.redhat.com/ubi8/ubi

RUN yum -y install iproute && \
    curl -LO https://github.com/bats-core/bats-core/archive/v1.1.0.tar.gz && \
    tar xvfpz v1.1.0.tar.gz && \
    ./bats-core-1.1.0/install.sh /usr
COPY multus-test /multus-test
WORKDIR /multus-test
ENTRYPOINT ["/multus-test/run.sh"]
