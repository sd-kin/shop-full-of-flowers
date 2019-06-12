FROM ruby:2.5
RUN apt-get update -qq && \
    apt-get install -y build-essential libpq-dev && \
    gem install bundler
RUN mkdir /app
COPY ./Gemfile* /app/
WORKDIR /app
RUN bundle install
COPY . /app