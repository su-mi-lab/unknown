FROM elixir:1.6.0

ENV APP_DIR /var/opt/app

RUN set -x && \
  apt-get update && \
  apt-get install -y --no-install-recommends \
  nodejs \
  npm \
  mysql-client \
  inotify-tools \
  git \
  imagemagick \
  curl && \
  rm -rf /var/lib/apt/lists/* && \
  npm cache clean && \
  npm install n -g && \
  n stable && \
  ln -sf /usr/local/bin/node /usr/bin/node && \
  apt-get purge -y nodejs npm

RUN useradd -m -s /bin/bash elixir
RUN echo 'elixir:password' | chpasswd
RUN mkdir -p ${APP_DIR}

USER elixir

RUN mix local.hex --force
RUN mix local.rebar --force

WORKDIR ${APP_DIR}