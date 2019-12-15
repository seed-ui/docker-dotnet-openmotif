FROM mcr.microsoft.com/dotnet/core/sdk:3.1-bionic

LABEL maintainer Narazaka

RUN apt-get -qq update \
    && apt-get -qq install -y \
    libmotif-dev \
    libxmu-dev \
    libxt-dev \
    python3 \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

RUN apt-get -qq update \
    && apt-get -qq install -y \
    locales \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/* \
    && echo "ja_JP UTF-8" > /etc/locale.gen \
    && locale-gen

ENV LANG=ja_JP.UTF-8 LC_CTYPE=ja_JP.UTF-8 PYTHONENCODING=utf-8
