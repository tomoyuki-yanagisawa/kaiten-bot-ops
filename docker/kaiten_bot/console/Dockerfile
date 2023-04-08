FROM ruby:3.1.3-slim

WORKDIR /usr/src/app

RUN apt-get update && apt-get install -y \
    git \
    make \
    gcc \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

RUN mkdir -p -m 0600 ~/.ssh && ssh-keyscan github.com >> ~/.ssh/known_hosts
RUN --mount=type=ssh git clone --depth 1 git@github.com:tomoyuki-yanagisawa/kaiten_bot.git .

RUN bundle install

CMD ["irb", "-r", "./boot"]

