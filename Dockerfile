FROM elixir:1.5.2

RUN apt-get update \
      && apt-get install -y --no-install-recommends \
      libpq-dev \
      inotify-tools \
      && rm -rf /var/lib/apt/lists/*

# Install NodeJS 6.x and the NPM
RUN curl -sL https://deb.nodesource.com/setup_6.x | bash -
RUN apt-get install -y -q nodejs \
      && rm -rf /var/lib/apt/lists/*

ENV APP_HOME /app
RUN mkdir -p $APP_HOME
WORKDIR $APP_HOME

RUN mix local.hex --force \
  && mix local.rebar --force

ADD . /app

CMD mix phx.server
