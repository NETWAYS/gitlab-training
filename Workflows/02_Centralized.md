!SLIDE smbullets
# Centralized Workflow

* Multiple users
* Each user has a local copy
* Central `master` branch

<center><img src="../_images/workflows/git_centralized_workflow_01.png" alt="Centralized Workflow"/></center>

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

<center><img src="../_images/workflows/git_centralized_workflow_02.png" alt="Centralized Workflow"/></center>

!SLIDE smbullets printonly
# Centralized Workflow - Publish Changes

* Developers push their local master branch
* Stored in central repository
* Adds all local commits that are not in the central master branch

<center><img src="../_images/workflows/git_centralized_workflow_02.png" style="width:480px;height:472px" alt="Centralized Workflow"/></center>

~~~SECTION:handouts~~~

****


~~~ENDSECTION~~~

!SLIDE smbullets noprint
# Centralized Workflow - Managing Conflicts

* Central repository's commit history is important
* If local commit history diverges, pushing changes is denied

<center><img src="../_images/workflows/git_centralized_workflow_03.png" alt="Centralized Workflow"/></center>

!SLIDE smbullets printonly
# Centralized Workflow - Managing Conflicts

* Central repository's commit history is important
* If local commit history diverges, pushing changes is denied

<center><img src="../_images/workflows/git_centralized_workflow_03.png" style="width:480px;height:300px" alt="Centralized Workflow"/></center>

~~~SECTION:handouts~~~

****


~~~ENDSECTION~~~

!SLIDE smbullets
# Lab ~~~SECTION:MAJOR~~~.~~~SECTION:MINOR~~~: Collaborate in a central repository

* Objective:
 * Clone the training repository twice and add diverging commits
* Steps for both:
 * Clone the `training.git` repository
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

Repeat the steps 2 times:

* Clone the `training.git` repository
* Add/modify a file and commit the change
* Push your change to the remote repository


!SLIDE supplemental solutions
# Lab ~~~SECTION:MAJOR~~~.~~~SECTION:MINOR~~~: Proposed Solution
****

## Clone the training repository twice and add diverging commits

****

### Clone the central repository

The last parameter specifies the target directory `training-global1`.

    @@@ Sh
    $ git clone git@localhost:/opt/git/training.git training-collab1

### Add/modify a file

    @@@ Sh
    $ echo "Training Test" > michaelfriedrich

### Commit the change

    @@@ Sh
    $ git add -A .
    $ git commit -av -m "My test commit"

### Push the changes to the remote repository

    @@@ Sh
    $ git push origin master

### Repeat these steps with training-collab2

The last parameter specifies the target directory `training-global2`.

    @@@ Sh
    $ git clone git@localhost:/opt/git/training.git training-collab2


!SLIDE smbullets noprint
# Centralized Workflow - Managing Conflicts Solution

* Fetch the remote history
* Rebase local changes on top of it
* Linear history

<center><img src="../_images/workflows/git_centralized_workflow_04_example.png" alt="Centralized Workflow"/></center>

!SLIDE smbullets printonly
# Centralized Workflow - Managing Conflicts Solution

* Fetch the remote history
* Rebase local changes on top of it
* Linear history

<center><img src="../_images/workflows/git_centralized_workflow_04_example.png" style="width:480px;height:252px" alt="Centralized Workflow"/></center>

~~~SECTION:handouts~~~

****


~~~ENDSECTION~~~

!SLIDE smbullets
# Lab ~~~SECTION:MAJOR~~~.~~~SECTION:MINOR~~~: Resolve conflicts in a central repository

* Objective:
 * Rebase your local history with the remote repository
* Steps:
 * Fetch the changes
 * Rebase the master branch against `origin/master`
 * Resolve possible merge conflicts
 * Push your rebased history

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

* Fetch the changes
* Rebase the master branch against `origin/master`
* Resolve possible merge conflicts
* Push your rebased history


!SLIDE supplemental solutions
# Lab ~~~SECTION:MAJOR~~~.~~~SECTION:MINOR~~~: Proposed Solution
****

## Rebase your local history with the remote repository

****

### Fetch the remote changes

    @@@ Sh
    $ git fetch

### Rebase your local history

    @@@ Sh
    $ git rebase origin/master

### Resolve merge probblems

    @@@ Sh
    $ git status
    $ vim <problem file>

Search for conflicts in vim:

    />>>

Resolve the conflicts, add the file and continue the rebase.

    @@@ Sh
    $ git add <problem file>
    $ git rebase --continue


### Push the changes to the remote repository

    $ git push origin master



