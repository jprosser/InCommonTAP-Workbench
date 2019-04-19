FROM perl:latest

MAINTAINER "TIER API & EntReg Working Group <tier-api@internet2.edu>"

# ENV PERL5LIB /usr/local/lib/perl5/site_perl/5.26.0/

RUN set -x; \
  apt-get update \
  && DEBIAN_FRONTEND=noninteractive apt-get install -y netcat vim \
  && apt-get clean

RUN set -x; \
    cpanm App::cpanminus \
    && cpanm REST::Client \
    && cpanm JSON \
    && cpanm YAML \
    && cpanm Getopt::Long \
    && cpanm MIME::Base64


COPY attributeSlammer /opt/attributeSlammer
WORKDIR /opt/attributeSlammer
CMD [ "./attribute_slam.sh" ]
