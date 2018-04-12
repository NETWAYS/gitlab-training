!SLIDE smbullets
# Centralized Workflow

* Multiple users
* Each user has a local copy
* Central `master` branch

<center><img src="../../_images/workflows/git_centralized_workflow_01.png" alt="Centralized Workflow"/></center>

~~~SECTION:handouts~~~

****

Compared to other VCS systems, Git provides the advantage of
also storing a local copy of the repository and branches.

That way a developer can work isolated on changes on its own
while other developers can do the same. These isolated environments
ensure that each developers works independantly from other
changes in the project.

In addition to that the Git branching model provides a fail-safe mechanism
for integrating and sharing code changes between repositories.

~~~ENDSECTION~~~


!SLIDE smbullets
# Centralized Workflow - Developers

* Developers clone the central repository
* Work in local copies
* New commits are stored locally
* Importing the remote repository's changes is optional


~~~SECTION:handouts~~~

****


~~~ENDSECTION~~~

!SLIDE smbullets noprint
# Centralized Workflow - Publish Changes

* Developers push their local master branch
* Stored in central repository
* Adds all local commits that are not in the central master branch

<center><img src="../../_images/workflows/git_centralized_workflow_02.png" alt="Centralized Workflow"/></center>

!SLIDE smbullets printonly
# Centralized Workflow - Publish Changes

* Developers push their local master branch
* Stored in central repository
* Adds all local commits that are not in the central master branch

<center><img src="../../_images/workflows/git_centralized_workflow_02.png" style="width:480px;height:472px" alt="Centralized Workflow"/></center>

~~~SECTION:handouts~~~

****


~~~ENDSECTION~~~

!SLIDE smbullets noprint
# Centralized Workflow - Managing Conflicts

* Central repository's commit history is important
* If local commit history diverges, pushing changes is denied

<center><img src="../../_images/workflows/git_centralized_workflow_03.png" alt="Centralized Workflow"/></center>

!SLIDE smbullets printonly
# Centralized Workflow - Managing Conflicts

* Central repository's commit history is important
* If local commit history diverges, pushing changes is denied

<center><img src="../../_images/workflows/git_centralized_workflow_03.png" style="width:480px;height:300px" alt="Centralized Workflow"/></center>

~~~SECTION:handouts~~~

****


~~~ENDSECTION~~~

!SLIDE smbullets
# Lab ~~~SECTION:MAJOR~~~.~~~SECTION:MINOR~~~: Collaborate in a central repository

* Objective:
 * Clone the training repository twice and add diverging commits
* Steps:
 * Clone the `training.git` repository into `$HOME/training1`
 * Clone the `training.git` repository into `$HOME/training2`
* Steps for both:
 * Change into each directory
 * Add/modify a file and commit the change
 * Push your change to the remote repository
* Next steps:
 * Explain the error message after the second push


!SLIDE supplemental exercises
# Lab ~~~SECTION:MAJOR~~~.~~~SECTION:MINOR~~~: Collaborate in a central repository

## Objective: Clone the training repository twice and add diverging commits
****

* Clone the training repository twice and add diverging commits

## Steps:

****

* Clone the `training.git` repository into `$HOME/training1`
* Clone the `training.git` repository into `$HOME/training2`

Add the directory destination after the Git clone URL.

Repeat the steps 2 times:

* Change into each directory
* Add/modify a file and commit the change
* Push your change to the remote repository


!SLIDE supplemental solutions
# Lab ~~~SECTION:MAJOR~~~.~~~SECTION:MINOR~~~: Proposed Solution
****

## Clone the training repository twice and add diverging commits

****

### Clone the central repository

The last parameter specifies the target directory `training1`.

    @@@ Sh
    $ cd $HOME
    $ git clone https://[...].nws.netways.de/root/training.git training1

### Add/modify a file

    @@@ Sh
    $ echo "My Name" > AUTHORS

### Commit the change

    @@@ Sh
    $ git add -A .
    $ git commit -av -m "Add myself to AUTHORS"

### Push the changes to the remote repository

    @@@ Sh
    $ git push origin master

### Repeat these steps with training2

The last parameter specifies the target directory `training2`.

    @@@ Sh
    $ cd $HOME
    $ git clone https://[...].nws.netways.de/root/training.git training2


!SLIDE smbullets noprint
# Centralized Workflow - Managing Conflicts Solution

* Fetch the remote history
* Rebase local changes on top of it
* Linear history

<center><img src="../../_images/workflows/git_centralized_workflow_04_example.png" alt="Centralized Workflow"/></center>

!SLIDE smbullets printonly
# Centralized Workflow - Managing Conflicts Solution

* Fetch the remote history
* Rebase local changes on top of it
* Linear history

<center><img src="../../_images/workflows/git_centralized_workflow_04_example.png" style="width:480px;height:252px" alt="Centralized Workflow"/></center>

~~~SECTION:handouts~~~

****


~~~ENDSECTION~~~

!SLIDE smbullets
# Lab ~~~SECTION:MAJOR~~~.~~~SECTION:MINOR~~~: Resolve conflicts in a central repository

* Objective:
 * Rebase your local history with the remote repository
* Steps:
 * Change into `$HOME/training`
 * Reset the local history by 2 commits with `git reset --hard HEAD~2`
 * Update and commit README.md
 * Fetch the remote repository and use `git diff origin/master` to compare the changes
 * Rebase the master branch against the remote master branch with `git rebase origin/master`
 * Resolve possible merge conflicts, add them and continue with `git rebase --continue`
 * Push your rebased history

Hint: `>>>` marks conflicts and show the differences on merge.

~~~SECTION:handouts~~~

****
Instead of `git fetch` and `git rebase` you can also use
the `git pull` command with the additional `--rebase` flag.
This helps if you are familiar with SVN and `svn update`.

If you forget the `--rebase` flag it will still work
but generate merge commits. This will merge your commits
in historical order but not rebase them on top of the existing
history.

For using a centralized workflow it is better to use `rebase`
instead of generating a merge commit.

~~~ENDSECTION~~~

!SLIDE supplemental exercises
# Lab ~~~SECTION:MAJOR~~~.~~~SECTION:MINOR~~~: Resolve conflicts in a central repository

## Objective: Rebase your local history with the remote repository
****

* Rebase your local history with the remote repository

## Steps:

****

* Change into `$HOME/training`
* Reset the local history by 2 commits with `git reset --hard HEAD~2`
* Update and commit README.md
* Fetch the remote repository and use `git diff origin/master` to compare the changes
* Rebase the master branch against the remote master branch with `git rebase origin/master`
* Resolve possible merge conflicts, add them and continue with `git rebase --continue`
* Push your rebased history

!SLIDE supplemental solutions
# Lab ~~~SECTION:MAJOR~~~.~~~SECTION:MINOR~~~: Proposed Solution
****

## Rebase your local history with the remote repository

****

### Reset the history by 2 commits

    @@@ Sh
    $ git reset --hard HEAD~2

### Update and commit README.md

    @@@ Sh
    $ vim README.md

    Testing rebase

    $ git add README.md
    $ git commit -v README.md "Rebase test"

### Fetch and diff the remote changes

    @@@ Sh
    $ git fetch

    $ git diff origin/master

### Rebase your local history

Rebase your local history against the remote origin master branch.

    @@@ Sh
    $ git rebase origin/master

### Resolve merge probblems

    @@@ Sh
    $ git status
    $ vim README.md

Search for conflicts in vim:

    />>>

Resolve the conflicts, add the file and continue the rebase.

    @@@ Sh
    $ git add README.md
    $ git rebase --continue


### Push the changes to the remote repository

    $ git push origin master



