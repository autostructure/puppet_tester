FROM ruby:latest

WORKDIR /tmp

COPY Gemfile .

RUN echo "deb http://download.virtualbox.org/virtualbox/debian jessie contrib" >> /etc/apt/sources.list
RUN wget https://apt.puppetlabs.com/puppetlabs-release-precise.deb
RUN wget -q https://www.virtualbox.org/download/oracle_vbox_2016.asc -O- | apt-key add -
RUN wget -q https://www.virtualbox.org/download/oracle_vbox.asc -O- | apt-key add -
RUN dpkg -i puppetlabs-release-precise.deb
RUN apt-get update
RUN apt-get -y install virtualbox-5.1 vagrant
RUN gem install bundler && bundle update
