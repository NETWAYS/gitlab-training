!SLIDE smbullets
# GitLab Introduction

GitLab is available as self-hosted or cloud based repository management
system.

* Git repositories
* User and group management
* Fine granular permissions (branch protection, etc.)
* Issue tracking and project management (dashboards, etc.)
* Merge, review, report
* Continuous integration (CI)
  * Build pipelines
  * Built-in container registry

~~~SECTION:handouts~~~

****

~~~ENDSECTION~~~

!SLIDE smbullets
# GitLab Editions

* Community Edition (CE), part of this training
* Enterprise Edition (EE), additional features
  * Multiple LDAP servers
  * LDAP group import
  * Git Hooks (not web hooks)
  * Search backend with Elasticsearch



~~~SECTION:handouts~~~

****

Overview: https://about.gitlab.com/features/
Comparison: https://about.gitlab.com/images/feature_page/gitlab-features.pdf

The source code is publicly available for both editions.
You'll need a valid license for running EE in production.

~~~ENDSECTION~~~
!SLIDE smbullets
# GitLab Components

* Ruby on Rails application (unicorn, sidekiq)
* Nginx webserver
* PostgreSQL database backend
* Redis cache
* NodeJS for Javascript rendering
* Golang for background daemons


It is recommended to use the Omnibus installation package.

~~~SECTION:handouts~~~

****

Omnibus packages: https://about.gitlab.com/installation/?version=ce

More details on the manual installation instructions can be
found in the official documentation: https://docs.gitlab.com/ce/install/installation.html

~~~ENDSECTION~~~


~~~ENDSECTION~~~
!SLIDE smbullets
# GitLab: First Steps

* Navigate to the GitLab URL
* Use `root` and set a new password
* Login
* Get familiar and follow the trainer's explanations



~~~SECTION:handouts~~~

****

GitLab 8.6+ removed the option to set a default root password. The web interface will
always prompt you to set a proper password.

Discussion here: https://gitlab.com/gitlab-org/gitlab-ce/issues/1980

Possible workaround:

```
sed -i "s/^# gitlab_rails\['initial_root_password'\].*/gitlab_rails['initial_root_password'] = \"password\"/g" /etc/gitlab/gitlab.rb
gitlab-ctl reconfigure
gitlab-ctl restart
```


~~~ENDSECTION~~~
