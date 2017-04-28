FROM debian:jessie-slim

## user: root

RUN apt-get update -qq && \
    apt-get upgrade -qq -y && \
    apt-get install -qq -y \
            curl \
            git \
            zip \
            unzip \
            imagemagick && \
    apt-get clean -qq -y && \
    apt-get autoclean -qq -y && \
    apt-get autoremove -qq -y && \
    rm -rf /var/cache/debconf/*-old && \
    rm -rf /var/lib/apt/lists/* && \
    rm -rf /usr/share/doc/*

ENV LANG=C.UTF-8

RUN useradd -ms $(which bash) asdf

## user: asdf

USER asdf
