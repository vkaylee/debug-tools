FROM python:3.9.12-buster
ENV DEBIAN_FRONTEND noninteractive
RUN apt-get update \
    && apt-get install vim -y \
    && apt-get install nano -y \
    && apt-get install telnet -y
CMD sleep infinity
SHELL ["/bin/bash", "-c"]
USER 2000