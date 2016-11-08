FROM ruby:latest

COPY docker.repo /etc/yum.repos.d/

RUN apt-get -y update && \
    apt-get -y install apt-transport-https ca-certificates && \
    apt-key adv --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys 58118E89F3A912897C070ADBF76221572C52609D && \
    echo "deb https://apt.dockerproject.org/repo debian-jessie main" > /etc/apt/sources.list.d/docker.list && \
    apt-get -y update && \
    apt-cache policy docker-engine && \
    apt-get -y update && \
    apt-get -y install docker-engine && \
    wget https://apt.puppetlabs.com/puppetlabs-release-precise.deb && \
    dpkg -i puppetlabs-release-precise.deb && \
    apt-get update

COPY Gemfile .
RUN  gem install bundler && bundle update && echo "NO"

# RUN echo "deb http://download.virtualbox.org/virtualbox/debian jessie contrib" >> /etc/apt/sources.list
# RUN wget https://apt.puppetlabs.com/puppetlabs-release-precise.deb
# RUN wget -q https://www.virtualbox.org/download/oracle_vbox_2016.asc -O- | apt-key add -
# RUN wget -q https://www.virtualbox.org/download/oracle_vbox.asc -O- | apt-key add -
# RUN dpkg -i puppetlabs-release-precise.deb
# RUN apt-get update
# RUN apt-get -y install virtualbox-5.1 vagrant
# RUN gem install bundler && bundle update
