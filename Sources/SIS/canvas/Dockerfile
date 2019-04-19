FROM perl:latest

MAINTAINER "TIER API & EntReg Working Group <tier-api@internet2.edu>"

# ENV PERL5LIB /usr/local/lib/perl5/site_perl/5.26.0/

RUN set -x; \
  apt-get update \
  && DEBIAN_FRONTEND=noninteractive apt-get install -y netcat vim \
  && apt-get clean

RUN cpanm App::cpanminus
RUN cpanm Net::RabbitFoot
RUN cpanm Net::RabbitMQ --force
RUN cpanm Net::AMQP::RabbitMQ --force
RUN cpanm AnyEvent
RUN cpanm REST::Client
RUN cpanm JSON

COPY . /usr/src/canvas_provisioner
WORKDIR /usr/src/canvas_provisioner
CMD [ "./run_canvas.sh" ]
