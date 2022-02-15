FROM ruby:3.1

RUN mkdir -p /usr/src
WORKDIR /usr/src

RUN gem install -v 6.1 rails