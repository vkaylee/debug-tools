FROM python:3.9.12-buster
ARG USER=2000
ARG HOME=/home/user
ENV HOME ${HOME}
RUN mkdir -p ${HOME} \
    && chgrp -R 0 ${HOME} \
    && chmod -R g=u ${HOME}
WORKDIR ${HOME}
ENV SHELL /bin/bash

ENV DEBIAN_FRONTEND noninteractive
# Set default shell ENV
ENV SHELL /bin/bash
# Use shell as defined to run some scripts after
SHELL ["/bin/bash", "-c"]
RUN apt-get update \
    && apt-get install vim -y \
    && apt-get install nano -y \
    && apt-get install -y net-tools iproute2 \
    && apt-get install -y dnsutils \
    && apt-get install -y apache2-utils \
    && apt-get install telnet -y
# fortio https://github.com/fortio/fortio
RUN curl -L https://github.com/fortio/fortio/releases/download/v1.60.3/fortio-linux_amd64-1.60.3.tgz | tar -C / -xvzpf -
# go_http_server_mock_test https://github.com/vkaylee/go_http_server_mock_test
RUN curl -L https://github.com/vkaylee/go_http_server_mock_test/releases/download/v0.0.1/go_http_server_mock_test_0.0.1_linux_amd64.tar.gz | tar -C / -xvzpf -
USER ${USER}
CMD sleep infinity

