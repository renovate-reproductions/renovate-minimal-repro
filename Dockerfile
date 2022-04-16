FROM ruby:2.7.6-slim-buster

WORKDIR /usr/src/app
COPY Gemfile /usr/src/app/Gemfile
COPY Gemfile.lock /usr/src/app/Gemfile.lock

# install gemfile and package
RUN bundle install

RUN ruby -e 'require "gemoji"; puts Emoji.find_by_alias("cat").raw'

