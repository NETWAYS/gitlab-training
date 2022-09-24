FROM docker.io/ubuntu:focal
LABEL maintainer="support@netways.de"

WORKDIR /training

# Basic showoff and patched wkhtmltopdf dependencies
RUN set -ex; \
    apt-get update && \
    DEBIAN_FRONTEND=noninteractive \
    apt-get install --no-install-recommends -y \
      build-essential \
      curl \
      markdown \
      ruby \
      ruby-dev \
      rubygems \
      xz-utils \
      zlib1g \
      zlib1g-dev \
      libssl1.1 \
      libssl-dev \
      libxrender-dev \
      libx11-dev \
      libxext-dev \
      libfontconfig1-dev \
      libfreetype6-dev \
      fontconfig \
  && apt-get clean \
  && rm -r /var/lib/apt/lists/*

# wkhtmltopdf needs a patched QT version
ARG wkhtmltox_sha256_checksum="40bc014d0754ea44bb90e733f03e7c92862f7445ef581e3599ecc00711dddcaa"
ARG wkhtmltox_url="https://github.com/wkhtmltopdf/wkhtmltopdf/releases/download/0.12.3/wkhtmltox-0.12.3_linux-generic-amd64.tar.xz"

# Download, verify and install wkhtmltox
RUN set -ex; \
    curl -sSL "${wkhtmltox_url}" --output /tmp/wkhtmltox.tar.xz\
    && echo "${wkhtmltox_sha256_checksum}  /tmp/wkhtmltox.tar.xz" | sha256sum -c - \
    \
    && tar vxf /tmp/wkhtmltox.tar.xz -C /usr/local/bin/ --strip-components=2 wkhtmltox/bin/wkhtmltoimage \
    && tar vxf /tmp/wkhtmltox.tar.xz -C /usr/local/bin/ --strip-components=2 wkhtmltox/bin/wkhtmltopdf \
    && rm -f /tmp/wkhtmltox.tar.xz

# Install showoff Gem
ARG showoff_version=0.19.6
RUN gem install showoff --version="$showoff_version"

EXPOSE 9090

CMD ["showoff", "serve"]
