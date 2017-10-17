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


!SLIDE smbullets
# Lab ~~~SECTION:MAJOR~~~.~~~SECTION:MINOR~~~: Generate public SSH key

* Objective:
 * Generate public SSH key
* Steps:
 * Use `ssh-keygen` to generate an SSH key

~~~SECTION:handouts~~~

****

This key will be pre-generated on training notebooks.


~~~ENDSECTION~~~

!SLIDE supplemental exercises
# Lab ~~~SECTION:MAJOR~~~.~~~SECTION:MINOR~~~: Generate public SSH key

## Objective: Generate public SSH key
****

* Generate public SSH key

## Steps:

****

* Use `ssh-keygen` to generate an SSH key


!SLIDE supplemental solutions
# Lab ~~~SECTION:MAJOR~~~.~~~SECTION:MINOR~~~: Proposed Solution
****

## Generate public SSH key

****

### Generate key

    @@@ Sh
    $ ssh-keygen


