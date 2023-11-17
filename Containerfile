FROM fedora:39
ARG USER=2000
ARG HOME=/home/user
ENV HOME ${HOME}
RUN mkdir -p ${HOME} \
    && chgrp -R 0 ${HOME} \
    && chmod -R g=u ${HOME}
WORKDIR ${HOME}
# Set default shell ENV
ENV SHELL /bin/bash
# Use shell as defined to run some scripts after
SHELL ["/bin/bash", "-c"]
RUN dnf install -y python3
RUN dnf install -y vim
RUN dnf install -y nano
RUN dnf install -y net-tools
RUN dnf install -y iproute
RUN dnf install -y dnsutils
RUN dnf install -y httpd-tools
RUN dnf install -y telnet
# fortio https://github.com/fortio/fortio
RUN curl -L https://github.com/fortio/fortio/releases/download/v1.60.3/fortio-linux_amd64-1.60.3.tgz | tar -C / -xvzpf -
# go_http_server_mock_test https://github.com/vkaylee/go_http_server_mock_test
RUN curl -L https://github.com/vkaylee/go_http_server_mock_test/releases/download/v0.0.3/go_http_server_mock_test_Linux_x86_64.tar.gz | tar -C / -xvzpf -
# Clean cache
RUN dnf clean all
RUN rm -rf /var/cache/yum
USER ${USER}
CMD sleep infinity
