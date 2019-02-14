!SLIDE smbullets noprint
# Forking Workflow with GitHub

* Fork aka "create a copy" of the server-side repository
* Commit and push into own repository copy
* Create a `Pull Request` for original repo, CI runs automated tests
* Developers/Maintainers review and merge PR, CI triggers deployment task

<center><img src="../../_images/workflows/git_github_workflow.png" alt="GitHub Workflow"/></center>

!SLIDE smbullets printonly
# Forking Workflow with GitHub

* Fork aka "create a copy" of the server-side repository
* Commit and push into own repository copy
* Create a `Pull Request` for original repo, CI runs automated tests
* Developers/Maintainers review and merge PR, CI triggers deployment task

<center><img src="../../_images/workflows/git_github_workflow.png" style="width:450px" alt="GitHub Workflow"/></center>

~~~SECTION:handouts~~~

****

References:

GitHub: https://guides.github.com/introduction/flow/
GitLab: https://docs.gitlab.com/ce/workflow/forking_workflow.html

~~~ENDSECTION~~~

!SLIDE smbullets small
# Forking Workflow - Multiple Remote Repositories

* **Multiple** remote repositories
 * `origin` is yours, e.g. https://github.com:dnsmichi/icinga2.git
 * `upstream` is official with releases, e.g. https://github.com/icinga/icinga2.git
* Merge branches from `origin/<branch>` to `upstream/<branch>` and vice versa

Example:

    $ git remote -v
    origin	https://github.com:dnsmichi/icinga2.git (fetch)
    origin	https://github.com:dnsmichi/icinga2.git (push)
    upstream	https://github.com/icinga/icinga2.git (fetch)
    upstream	https://github.com/icinga/icinga2.git (push)

~~~SECTION:handouts~~~

****

# Forking Workflow - Keep in Sync

* Pull changes from `upstream` HEAD to own repository master branch to sync development
* Remote `HEAD` is the default branch for this repository, usually `master`
* Remember, HEAD is just a smart pointer. You can use a branch name too.

Example:

    $ git checkout master
    $ git fetch upstream
    $ git pull upstream HEAD
    $ git push origin master


~~~ENDSECTION~~~


