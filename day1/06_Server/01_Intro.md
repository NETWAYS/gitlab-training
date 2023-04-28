!SLIDE subsection
# ~~~SECTION:MAJOR~~~ Git Server

!SLIDE
# Introduction

A Git Server is a central storage for repositories

* Facilitates collaboration between teams
* Offers user based access control
* Can trigger events (e.g. for CI)
* Can be connected to web interfaces

There are collaboration suites with many features:

* GitLab
* GitHub
* Bitbucket

~~~SECTION:handouts~~~

****

There is a variety of Git server tools, web interfaces
and addons out there.

* Gitea
* Gogs

In case you don't want to host your own Git server,
there are open source and enterprise hosting options available.

NETWAYS also provides GitLab hosting services:

* https://nws.netways.de/de/apps/gitlab/

~~~ENDSECTION~~~

!SLIDE smbullets noprint
# GitLab

<center><img src="../../_images/server/git_server_gitlab.png" style="width: 800px;" alt="GitLab"/></center>

!SLIDE smbullets printonly
# GitLab

<center><img src="../../_images/server/git_server_gitlab.png" style="width:450px" alt="GitLab"/></center>
!SLIDE smbullets noprint
# GitHub

<center><img src="../../_images/server/git_server_github.png" style="width: 800px;" alt="GitHub"/></center>

!SLIDE smbullets printonly
# GitHub

<center><img src="../../_images/server/git_server_github.png" style="width:450px" alt="GitHub"/></center>

!SLIDE smbullets
# Supported Protocols

Git can use different protocols to transfer data: HTTP, Secure Shell (SSH) and Git.

* HTTPS
  * `https://my-gitlab.nws.netways.de/username/repo.git`
* SSH
  * `git@github.com:username/repo.git`
* Git protocol
  * `git://domain.com/repo.git`
  * Hint: fast, but unencrypted and no authentication
