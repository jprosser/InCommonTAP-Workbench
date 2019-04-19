FROM ruby:2.5.5

MAINTAINER "TIER API & EntReg Working Group <tier-api@internet2.edu>"

RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs netcat

RUN mkdir /myapp

WORKDIR /myapp

ADD Gemfile /myapp/Gemfile
ADD Gemfile.lock /myapp/Gemfile.lock

RUN bundle install

ADD . /myapp

# Indicate the container needs bootstrapping
RUN touch /FIRSTRUN

# Copy in the container start and bootstrap script
COPY run-rails.sh /usr/local/bin

EXPOSE 3000

CMD ["/bin/bash", "/usr/local/bin/run-rails.sh"]
