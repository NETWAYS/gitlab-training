!SLIDE smbullets
# Forking Workflow with GitHub/GitLab

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
* Developers create a `Pull Request` for the official repository
* CI triggers automated tests for the PR
* Developers/Maintainers review and merge PR
* CI triggers deployment task

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
# GitHub/GitLab Workflow - Keep in Sync

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


!SLIDE smbullets
# Lab ~~~SECTION:MAJOR~~~.~~~SECTION:MINOR~~~: Create Merge Request

* Objective:
 * Create merge request from feature branch

* Steps:
 * Change into `$HOME/training`
 * Create the branch `feature/docs-merge-request`
 * Edit `README.md`, add, commit and push the changes
 * Open the proposed GitLab URL in your browser
 * Fill in the merge request and submit it
 * Simulate a review and merge it
 * Pull changes to local master branch and use `tig`

~~~SECTION:handouts~~~

****

~~~ENDSECTION~~~

!SLIDE supplemental exercises
# Lab ~~~SECTION:MAJOR~~~.~~~SECTION:MINOR~~~: Create Merge Request

## Objective: Merge Feature Branches
****

* Create Merge Request

## Steps:

****

* Change into `$HOME/training`
* Create the branch `feature/docs-merge-request`
* Edit `README.md`, add, commit and push the changes
* Open the proposed GitLab URL in your browser
* Fill in the merge request and submit it
* Simulate a review and merge it
* Pull changes to local master branch and use `tig`

!SLIDE supplemental solutions
# Lab ~~~SECTION:MAJOR~~~.~~~SECTION:MINOR~~~: Proposed Solution
****

## Merge Feature Branches

****

### Checkout the feature branch, add, commit and push changes

    @@@ Sh
    $ cd $HOME/training
    $ git checkout master
    $ git checkout -b feature/docs-merge-request
    $ vim README.md

    Let's create a merge request with GitLab.

    $ git add README.md
    $ git commit -v README.md -m "Update docs for merge requests"
    $ git push -u origin feature/docs-merge-request

### Navigate into GitLab and create merge request

GitLab puts the URL into the shell output on pushing the branch.

    @@@ Sh
    $ git push -u origin feature/docs-merge-request
    Counting objects: 6, done.
    Delta compression using up to 4 threads.
    Compressing objects: 100% (6/6), done.
    Writing objects: 100% (6/6), 618 bytes | 618.00 KiB/s, done.
    Total 6 (delta 4), reused 0 (delta 0)
    remote:
    remote: To create a merge request for feature/docs-merge-request, visit:
    remote:   https://[...].nws.netways.de/root/training/merge_requests/new?merge_request%5Bsource_branch%5D=feature%2Fdocs-merge-request
    remote:
    To https://[...].nws.netways.de/root/training.git
     * [new branch]      feature/docs-merge-request -> feature/docs-merge-request
    Branch 'feature/docs-merge-request' set up to track remote branch 'feature/docs-merge-request' from 'origin'.


Open the URL in your browser.

Specify a topic, description and create the merge request.

Merge the request to master and investigate the Git history.

### Pull changes to master after merge

    @@@ Sh
    $ git checkout master
    $ git pull
    $ tig

