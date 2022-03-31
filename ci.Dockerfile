FROM python:3.9.12-buster
ENV DEBIAN_FRONTEND noninteractive
# Set default shell ENV
ENV SHELL /bin/bash
# Use shell as defined to run some scripts after
SHELL ["/bin/bash", "-c"]
RUN apt-get update \
    && apt-get install vim -y \
    && apt-get install nano -y \
    && apt-get install telnet -y

CMD sleep infinity
USER 2000