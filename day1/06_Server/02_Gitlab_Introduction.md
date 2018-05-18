!SLIDE smbullets
# GitLab Introduction

GitLab is available as self-hosted or cloud based repository management
system.

* Git repositories
* User and group management and fine granular permissions
* Issue tracking and project management (dashboards, etc.)
* Merge, review, report
* Continuous integration/deployment (CI/CD)

Hosted: https://www.netways.de/managed_hosting/gitlab_ce_hosting/

NWS: https://nws.netways.de/products/gitlab-ce

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

It is recommended to use the Omnibus installation package or use
a managed cloud hosting service.

~~~SECTION:handouts~~~

****


Omnibus packages: https://about.gitlab.com/installation/?version=ce

More details on the manual installation instructions can be
found in the official documentation: https://docs.gitlab.com/ce/install/installation.html

~~~ENDSECTION~~~


