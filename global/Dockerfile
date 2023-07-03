FROM docker.io/ubuntu:lunar
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
      libssl3 \
      libxrender-dev \
      libx11-dev \
      libxext-dev \
      libfontconfig1-dev \
      libfreetype6-dev \
      fontconfig \
      libjpeg-turbo8 \
      xfonts-75dpi \
      xfonts-base \
  && apt-get clean \
  && rm -r /var/lib/apt/lists/*

# wkhtmltopdf needs a patched QT version
ARG wkhtmltox_url=https://github.com/NETWAYS/training-global/releases/download/v0.20.4/wkhtmltox_0.12.6.1-2.jammy_amd64.deb
RUN set -ex; \
    curl -sSL "${wkhtmltox_url}" --output /tmp/wkhtmltox.deb \
    && dpkg -i /tmp/wkhtmltox.deb \
    && rm -f /tmp/wkhtmltox.deb

# Install showoff Gem
ARG showoff_version=0.20.4
RUN set -ex; \
    gem install showoff --version="$showoff_version" \
    # uri v0.11.0 (installed as dependency for showoff) contains CVE-2023-28755
    # so we upgrade and delete the default manually. This might be removed in the future
    # Note that the Ruby 3.1.0 path might change when updating the distro
    && GEM_HOME=/usr/lib/ruby/gems/3.1.0/ gem install --default uri; rm -f /usr/lib/ruby/gems/3.1.0/specifications/default/uri-0.11*;

EXPOSE 9090

CMD ["showoff", "serve"]
