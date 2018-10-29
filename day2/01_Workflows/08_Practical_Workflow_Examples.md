!SLIDE smbullets small
# Workflow Examples: Icinga 2

* Feature branch workflow
* `master` as development branch
* Major releases from `master`, `support/x.y` for bugfix releases

Moving to GitHub, we extended this to:

* (WIP) Pull Requests, local and community forks
* Travis CI (Linux) & Appveyor (Windows) automated tests
* Developers review and approve PRs, maintainer merges
* Maintainer prepares and publishes a release

https://github.com/Icinga/icinga2/blob/master/CONTRIBUTING.md
https://github.com/Icinga/icinga2/blob/master/RELEASE.md


~~~SECTION:handouts~~~

****


~~~ENDSECTION~~~


!SLIDE smbullets small
# Workflow Examples: Icinga Exchange

* Issue management in GitLab with milestones and boards
* Developers create Merge Requests from local branches
* CI jobs run unit and Mock tests (GitHub oauth, etc.)
* Maintainer reviews MRs and merges
* Maintainer creates a new release
* Manual deployment via Puppet and release tags


~~~SECTION:handouts~~~

****


~~~ENDSECTION~~~
