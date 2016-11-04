FROM ruby:latest

WORKDIR /tmp

COPY Gemfile .

RUN curl -O http://apt.puppetlabs.com/puppetlabs-release-pc1-jessie.deb
RUN dpkg -i puppetlabs-release-pc1-jessie.deb
RUN gem install bundler && bundle update
