FROM python:3-alpine
MAINTAINER Guillaume Sadler <guillaume.sadler@gmail.com>

# Update OS 
RUN apk update
RUN apk upgrade

# Install all build dependencies
# Add bash for debugging purposes
RUN apk update \
    && apk add --virtual build-dependencies \
        build-base \
        gcc \
        wget \
        git \
    && apk add \
        bash
        
RUN mkdir /pelican

COPY ./Makefile /pelican/Makefile
COPY ./pelicanconf.py /pelican/pelicanconf.py
COPY ./publishconf.py /pelican/publishconf.py
COPY ./tasks.py /pelican/tasks.py
COPY ./content /pelican/content

WORKDIR /pelican

# Pelican
RUN pip install pelican Markdown

CMD make devserver