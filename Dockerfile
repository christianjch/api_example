FROM ruby:2.3.0
MAINTAINER me <me@me.com>

RUN apt-get clean && apt-get update && apt-get install -y --force-yes --fix-missing \
  ssh \
  build-essential \
  nodejs

RUN mkdir -p /app
WORKDIR /app
