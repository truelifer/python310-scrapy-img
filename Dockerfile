FROM ubuntu:22.04
MAINTAINER truelifer
RUN apt update && \
    apt install -y --no-install-recommends python3.10 python3.10-dev python3-pip libxml2-dev libxslt1-dev zlib1g-dev libffi-dev libssl-dev && \
    /usr/bin/python3.10 -m pip install scrapy && \
    rm -rf /var/lib/apt/lists/* 
