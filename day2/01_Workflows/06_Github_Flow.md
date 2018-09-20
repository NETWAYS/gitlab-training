!SLIDE smbullets
# Forking Workflow with GitHub

* Every developer has
 * a server-side repository
 * a private repository as copy of the server-side repo
* Developers push their own server-side repository
* Project maintainer pushes to official repository

<center><img src="../../_images/workflows/git_forking_workflow_01.png" alt="Forking Workflow"/></center>

~~~SECTION:handouts~~~

****


~~~ENDSECTION~~~

!SLIDE smbullets
# Forking Workflow - How it works

* Developers fork, commit and push into their own repository
* Developers create a `Pull Request` for the official repository, CI triggers automated tests for the PR
* Developers/Maintainers review and merge PR, CI triggers deployment task

<center><img src="../../_images/workflows/git_github_workflow.png" alt="GitHub Workflow"/></center>

~~~SECTION:handouts~~~

****

References:

GitHub: https://guides.github.com/introduction/flow/
GitLab: https://docs.gitlab.com/ce/workflow/forking_workflow.html

~~~ENDSECTION~~~

!SLIDE smbullets small
# Forking Workflow - Multiple Remote Repositories

* **Multiple** remote repositories
 * `origin` is yours, e.g. git@github.com:dnsmichi/icinga2.git
 * `upstream` is official with releases, e.g. https://github.com/icinga/icinga2.git
* Merge branches from `origin/<branch>` to `upstream/<branch>` and vice versa

Example:

    $ git remote -v
    origin	git@github.com:dnsmichi/icinga2.git (fetch)
    origin	git@github.com:dnsmichi/icinga2.git (push)
    upstream	https://github.com/icinga/icinga2.git (fetch)
    upstream	https://github.com/icinga/icinga2.git (push)

~~~SECTION:handouts~~~

****


~~~ENDSECTION~~~

!SLIDE smbullets
# Forking Workflow - Keep in Sync

* Pull changes from `upstream` HEAD to own repository master branch to sync development
* Remote `HEAD` is the default branch for this repository, usually `master`
* Remember, HEAD is just a smart pointer. You can use a branch name too.

Example:

    $ git checkout master
    $ git fetch upstream
    $ git pull upstream HEAD
    $ git push origin master

~~~SECTION:handouts~~~

****


~~~ENDSECTION~~~


