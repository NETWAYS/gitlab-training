!SLIDE
# Workflow Examples: Icinga

A mix of feature branch and gitflow workflow.

* `master` corresponds to the development branch
* Major releases are created and tagged on `master`
* `support/x.y` branches for bugfix releases of long time support releases

Organizational workflow:

* Pull Requests, local and community forks
* Testing via GitHub Actions (Linux) and Appveyor (Windows)
* Developers review and approve PRs, maintainers merge them
* Maintainer prepares and publishes a release
