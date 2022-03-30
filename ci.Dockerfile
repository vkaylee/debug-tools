FROM python:3.9.12-buster
RUN apt-get update \
    && apt-get install vim -y \
    && apt-get install nano -y \
    && apt-get install telnet -y
CMD sleep infinity
USER 2000