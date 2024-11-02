FROM fedora:39
ARG USER=user
ARG HOME=/home/user
ENV USER=${USER}
ENV HOME=${HOME}
WORKDIR ${HOME}
RUN useradd -rm -d ${HOME} -s /bin/bash -g root -u 1001 ${USER}
# Set default shell ENV
ENV SHELL /bin/bash
# Use shell as defined to run some scripts after
SHELL ["/bin/bash", "-c"]
RUN dnf install -y python3
RUN dnf install -y unzip
RUN dnf install -y openssh-clients
RUN dnf install -y iputils
RUN dnf install -y vim
RUN dnf install -y nano
RUN dnf install -y net-tools
RUN dnf install -y iproute
RUN dnf install -y dnsutils
RUN dnf install -y httpd-tools
RUN dnf install -y telnet
RUN dnf install -y podman
# Iperf3: https://iperf.fr/iperf-download.php#fedora
RUN dnf install -y https://iperf.fr/download/fedora/iperf3-3.1.3-1.fc24.x86_64.rpm
# fortio https://github.com/fortio/fortio
RUN curl -L https://github.com/fortio/fortio/releases/download/v1.60.3/fortio-linux_amd64-1.60.3.tgz | tar -C / -xvzpf -
# go_http_server_mock_test https://github.com/vkaylee/go_http_server_mock_test
RUN curl -L https://github.com/vkaylee/go_http_server_mock_test/releases/download/v0.0.3/go_http_server_mock_test_Linux_x86_64.tar.gz | tar -C / -xvzpf -
# Clean cache
RUN dnf clean all
RUN rm -rf /var/cache/yum
USER ${USER}
CMD sleep infinity
