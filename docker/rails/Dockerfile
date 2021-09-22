FROM ruby:3.0.2

RUN curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add -
RUN echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list
RUN apt update && \
  apt install -y apt-utils \
  build-essential \
  libpq-dev \
  nodejs \
  yarn

WORKDIR /app

ADD Gemfile .
ADD Gemfile.lock .
RUN bundle install

ADD . /app


EXPOSE 3000

