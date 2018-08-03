FROM ubuntu:bionic
LABEL maintainer="support@netways.de"

ARG TEMP_DIR=/tmp

WORKDIR /training

# basic showoff and patched wkhtmltopdf dependencies
RUN apt-get update \
  && apt-get install -y -q \
      build-essential \
      wget \
      markdown \
      ruby \
      ruby-dev \
      rubygems \
      zlib1g \
      zlib1g-dev \
      libssl1.0.0 \
      libssl-dev \
      libxrender-dev \
      libx11-dev \
      libxext-dev \
      libfontconfig1-dev \
      libfreetype6-dev \
      fontconfig \
  && apt-get clean \
  && rm -r /var/lib/apt/lists/*

# RUN rm -f /etc/alternatives/ruby \
#   && ln -s /usr/bin/ruby1.9.3 /etc/alternatives/ruby \
#   && rm -f /etc/alternatives/gem \
#   && ln -s /usr/bin/gem1.9.3 /etc/alternatives/gem

# wkhtmltopdf needs a patched QT version
RUN cd $TEMP_DIR \
  && wget https://github.com/wkhtmltopdf/wkhtmltopdf/releases/download/0.12.3/wkhtmltox-0.12.3_linux-generic-amd64.tar.xz \
  && tar vxf wkhtmltox-0.12.3_linux-generic-amd64.tar.xz \
  && cp wkhtmltox/bin/wk* /usr/local/bin/ \
  && rm -rf $TEMP_DIR/wkhtml*

RUN gem install showoff --version=0.19.6

EXPOSE 9090

CMD ["showoff", "serve"]

