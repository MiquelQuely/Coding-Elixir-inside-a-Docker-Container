FROM elixir:latest

RUN apt-get update && \
    apt-get install -y postgresql-client && \
    apt-get install -y inotify-tools && \
    apt-get install -y nodejs && \
    curl -L https://npmjs.org/install.sh | sh && \
    mix local.hex --force && \
    mix archive.install hex phx_new 1.6.9 --force && \
    mix local.rebar --force

ENV APP_HOME /code/
RUN mkdir ${APP_HOME}
COPY . ${APP_HOME}

EXPOSE 4000
