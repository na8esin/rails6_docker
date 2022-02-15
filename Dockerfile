FROM ruby:3.1

RUN mkdir -p /usr/src
WORKDIR /usr/src

RUN set -ex \
    && wget -qO- https://deb.nodesource.com/setup_14.x | bash - \
    && apt-get update \
    && apt-get install -y \
                 default-mysql-client \
                 unzip \
                 nodejs \
                 locales \
                 locales-all \
                 vim \
                 libidn11-dev \
                 --no-install-recommends \
    && rm -rf /var/lib/apt/lists/* \
    && npm install -g yarn

RUN gem install -v 6.1 rails