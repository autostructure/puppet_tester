FROM ruby:latest

ADD Gemfile

RUN gem install bundler && bundle update
