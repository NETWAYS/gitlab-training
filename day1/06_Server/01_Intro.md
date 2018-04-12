!SLIDE subsection
# ~~~SECTION:MAJOR~~~ Git Server

!SLIDE smbullets
# Introduction

* Central storage for repositories
* Collaboration between teams
* User based access control
* Trigger events (e.g. for CI)

~~~SECTION:handouts~~~

****

There is a variety of Git server tools, web interfaces
and addons out there.

* GitLab
* gitosis
* gitolite

In case you don't want to host your own Git server,
there are open source and enterprise hosting options available.

NETWAYS also provides GitLab hosting services:

* https://www.netways.de/managed_hosting/gitlab_ce_hosting/
* https://nws.netways.de/products/gitlab-ce

~~~ENDSECTION~~~
!SLIDE smbullets
# Git Server Overview

* Git server daemon
* Web interfaces
* Entire collaboration suites
  * GitHub
  * GitLab
  * Bitbucket


~~~SECTION:handouts~~~

****


~~~ENDSECTION~~~

!SLIDE smbullets noprint
# GitLab

<center><img src="../../_images/server/git_server_gitlab.png" style="width: 800px;" alt="GitLab"/></center>

!SLIDE smbullets printonly
# GitLab

<center><img src="../../_images/server/git_server_gitlab.png" style="width:480px;height:260px" alt="GitLab"/></center>
!SLIDE smbullets noprint
# GitHub

<center><img src="../../_images/server/git_server_github.png" style="width: 800px;" alt="GitHub"/></center>

!SLIDE smbullets printonly
# GitHub

<center><img src="../../_images/server/git_server_github.png" style="width:480px;height:260px" alt="GitHub"/></center>


!SLIDE smbullets
# Git Server Protocol

* Read/write access via SSH
  * `git@github.com:username/repo.git`
* HTTPS protocol (write access via oauth tokens)
  * `https://my-gitlab.nws.netways.de/username/repo.git`
* Git protocol
  * `git://domain.com/repo.git`
* Local protocol
  * `file:///opt/git/repo.git`

