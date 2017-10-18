#!/bin/bash

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

# reconfigure and restart
gitlab-ctl reconfigure
gitlab-ctl restart
