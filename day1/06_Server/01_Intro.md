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
there are public services such as GitHub, GitLab or Bitbucket.

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

There is a variety of Git server tools, web interfaces
and addons out there.

* GitLab
* gitosis
* gitolite

In case you don't want to host your own Git server,
there are public services such as GitHub, GitLab or Bitbucket.

~~~ENDSECTION~~~

!SLIDE smbullets noprint
# GitHub

<center><img src="../../_images/server/git_server_github.png" style="width: 600px;" alt="GitHub"/></center>

!SLIDE smbullets printonly
# GitHub

<center><img src="../../_images/server/git_server_github.png" style="width:480px;height:260px" alt="GitHub"/></center>

!SLIDE smbullets noprint
# GitLab

<center><img src="../../_images/server/git_server_gitlab.png" style="width: 600px;" alt="GitLab"/></center>

!SLIDE smbullets printonly
# GitLab

<center><img src="../../_images/server/git_server_gitlab.png" style="width:480px;height:260px" alt="GitLab"/></center>

!SLIDE smbullets
# Git Server Protocol

* Local protocol
  * `file:///opt/git/repo.git`
* Git protocol
  * `git://domain.com/repo.git`
* Read/write access via SSH
  * `git@domain.com:repo.git`
* HTTPS protocol (write access via oauth tokens)
  * `https://github.com/NETWAYS/graphing-training.git`

