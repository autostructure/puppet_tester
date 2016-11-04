FROM ruby:latest

WORKDIR /tmp

COPY Gemfile .

RUN gem install bundler && bundle update
