FROM ubuntu:14.04

MAINTAINER James Lee Vann

RUN apt-get update -y && apt-get install --no-install-recommends -y python3 python3-dev python3-pip
RUN apt-get update \
    && apt-get install -y --no-install-recommends libjpeg-dev libpng-dev libpqxx3-dev \
    && apt-get clean \
    && rm -rf /var/cache/apt/*
RUN python3-pip install -U pip
RUN python3-pip install virtualenv
RUN python3-pip install uwsgi
RUN python3-pip install vex

VOLUME  ["/data", "/code"]

ADD run.sh /run.sh

EXPOSE 5000

CMD ["/run.sh"]

