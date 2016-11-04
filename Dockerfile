FROM ruby:latest

WORKDIR /tmp

COPY Gemfile .

RUN wget https://apt.puppetlabs.com/puppetlabs-release-precise.deb
RUN dpkg -i puppetlabs-release-precise.deb
RUN apt-get update
RUN  apt-get install virtualbox vagrant
RUN gem install bundler && bundle update
