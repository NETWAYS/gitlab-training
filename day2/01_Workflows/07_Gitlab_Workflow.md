!SLIDE smbullets noprint
# GitLab Workflow

* Manage branch access with roles and permissions
* Create `Merge Requests` from branches, CI runs tests/builds automatically
* Review and inline code comments
* Project maintainer merges requests and manages issues/milestones/releases

<center><img src="../../_images/workflows/git_gitlab_workflow.png" alt="Gitlab Workflow"/></center>

!SLIDE smbullets printonly
# GitLab Workflow

* Manage branch access with roles and permissions
* Create `Merge Requests` from branches, CI runs tests/builds automatically
* Review and inline code comments
* Project maintainer merges requests and manages issues/milestones/releases

<center><img src="../../_images/workflows/git_gitlab_workflow.png" style="width:450px" alt="Gitlab Workflow"/></center>

~~~SECTION:handouts~~~

****


~~~ENDSECTION~~~

!SLIDE smbullets
# Lab ~~~SECTION:MAJOR~~~.~~~SECTION:MINOR~~~: Create Milestone and first Issue

* Objective
 * Create Milestone `v0.1`
 * Create Issue `Update documentation`

* Steps:
 * Navigate into `Issues > Milestones`
 * Select `New Milestone` and use `v0.1` as title
 * Navigate to `Issues` and select `New issue`
 * Use `Update documentation` as title, add a description
 * Assign the `v0.1` milestone

~~~SECTION:handouts~~~

****

~~~ENDSECTION~~~

!SLIDE supplemental exercises
# Lab ~~~SECTION:MAJOR~~~.~~~SECTION:MINOR~~~: Create Milestone and First Issue

## Objective: Create Milestone and First Issue
****

* Create Milestone and First Issue

## Steps:

****

* Navigate into `Issues > Milestones`
* Select `New Milestone` and use `v0.1` as title
* Navigate to `Issues` and select `New issue`
* Use `Update documentation` as title, add a description
* Assign the `v0.1` milestone

!SLIDE supplemental solutions
# Lab ~~~SECTION:MAJOR~~~.~~~SECTION:MINOR~~~: Proposed Solution
****

## Create Milestone and First Issue

****

Follow the instructions and ask the trainer for help.




!SLIDE smbullets
# Lab ~~~SECTION:MAJOR~~~.~~~SECTION:MINOR~~~: Create Merge Request

* Objective:
 * Create merge request from feature branch

* Steps:
 * Create/checkout the branch `feature/docs-merge-request`
 * Edit `README.md`, add, commit and push the changes
 * Open the proposed GitLab URL in your browser
 * Fill in the merge request and add `fixes #1` as description
 * Merge the MR and tick `delect source branch`
 * Analyse the history in GitLab/tig and open issue #1

* Bonus:
 * Run `git fetch --prune` and `git branch -d feature/docs-merge-request`

~~~SECTION:handouts~~~

****

For future branch cleanups, you'll need to compare the deleted
remote branch references from `git fetch --prune` with the local
branch names, review them and then delete them.

    @@@Sh
    $ git branch -vv | grep 'origin/.*: gone]' | awk '{print $1}'
    $ git branch -vv | grep 'origin/.*: gone]' | awk '{print $1}' | xargs git branch -d


~~~ENDSECTION~~~

!SLIDE supplemental exercises
# Lab ~~~SECTION:MAJOR~~~.~~~SECTION:MINOR~~~: Create Merge Request

## Objective: Create Merge Request
****

* Create Merge Request

## Steps:

****

* Create/checkout the branch `feature/docs-merge-request`
* Edit `README.md`, add, commit and push the changes
* Open the proposed GitLab URL in your browser
* Fill in the merge request and add `fixes #1` as description
* Merge the MR and tick `delect source branch`
* Analyse the history in GitLab/tig and open issue #1

## Bonus:

****

* Run `git fetch --prune` and `git branch -d feature/docs-merge-request`


!SLIDE supplemental solutions
# Lab ~~~SECTION:MAJOR~~~.~~~SECTION:MINOR~~~: Proposed Solution
****

## Create Merge Request

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

GitLab puts the URL into the shell output when pushing the branch.

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

Specify a topic and description. Add `fixes #1` into the MR's description.

Create the merge request. Add a comment inline to the source code
and see what happens in the interface.

Merge the MR and tick `delete source branch`.

Open the previously created issue and verify that is was closed
by merging the MR.


### Update local index and delete the branch

    @@@ Sh
    $ git fetch --prune
    $ git branch -d feature/docs-merge-request

### Pull changes to local master after merge

    @@@ Sh
    $ git checkout master
    $ git pull
    $ tig



