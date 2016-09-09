FROM ubuntu:xenial

WORKDIR /training

RUN apt-get update \
  && apt-get install -y \
      build-essential \
      markdown \
      ruby \
      ruby-dev \
      rubygems \
      zlib1g \
      zlib1g-dev \
      libssl1.0.0 \
      libssl-dev \
      wkhtmltopdf

# RUN rm -f /etc/alternatives/ruby \
#   && ln -s /usr/bin/ruby1.9.3 /etc/alternatives/ruby \
#   && rm -f /etc/alternatives/gem \
#   && ln -s /usr/bin/gem1.9.3 /etc/alternatives/gem

RUN gem install showoff --version=0.9.11.1

CMD "/bin/bash"
