#!/bin/bash

# Keep in sync with https://git.netways.org/netways-training/provision-puppet-modules/blob/master/training/manifests/git.pp
GITLAB_URL="http://gitlab.localdomain"

# https://about.gitlab.com/installation/?version=ce

apt-get install -y curl openssh-server ca-certificates curl
apt-get install -y vim
update-alternatives --set editor /usr/bin/vim.basic

echo postfix postfix/main_mailer_type select "Internet Site" | debconf-set-selections
echo postfix postfix/mailname select `hostname -f` | debconf-set-selections
echo unattended-upgrades unattended-upgrades/enable_auto_updates boolean true | debconf-set-selections
apt-get -y install language-pack-en postfix unattended-upgrades


curl -sS https://packages.gitlab.com/install/repositories/gitlab/gitlab-ce/script.deb.sh | bash

apt-get install -y gitlab-ce

# set initial root password
sed -i "s/^# gitlab_rails\['initial_root_password'\].*/gitlab_rails['initial_root_password'] = \"password\"/g" /etc/gitlab/gitlab.rb

# set URL
sed -i "s/^external_url.*/external_url = \"$GITLAB_URL\"/g" /etc/gitlab/gitlab.rb

# reconfigure and restart
gitlab-ctl reconfigure
gitlab-ctl restart

# Docker
apt-get -y install \
    apt-transport-https \
    ca-certificates \
    curl \
    software-properties-common

curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -

add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
   $(lsb_release -cs) \
   stable"

apt-get update
apt-get -y install docker-ce


# GitLab Runner
curl -L https://packages.gitlab.com/install/repositories/runner/gitlab-runner/script.deb.sh | sudo bash
apt-get -y install gitlab-runner

