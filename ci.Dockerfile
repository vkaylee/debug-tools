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
    && apt-get install telnet -y

USER ${USER}
CMD sleep infinity

