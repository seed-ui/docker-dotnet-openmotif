FROM mcr.microsoft.com/dotnet/core/sdk:3.1

LABEL maintainer Narazaka

RUN apt-get -qq update \
    && apt-get -qq install -y \
    build-essential \
    libmotif-dev \
    libxmu-dev \
    libxt-dev \
    python3 \
    zip \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*
