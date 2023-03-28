!SLIDE smbullets
# Collaboration: Put History

* `git push`
  * Pushes the local history to the remote repository
  * Halts if the remote history diverged from your local history
* `git remote`
  * Adds remote repository URLs (default `origin`)
  * Lists and removes remote repository URLs
* `git branch -r`
  * Lists remote branches, prefixed with the remote name, e.g. `origin/main`

~~~SECTION:handouts~~~

****

`git push` updates remote references and pushes your local commit history to the remote repository.

`git remote` allows you to configure and list the remote repository. By default this is called `origin`.

~~~ENDSECTION~~~

!SLIDE smbullets
# Lab ~~~SECTION:MAJOR~~~.~~~SECTION:MINOR~~~: Learn more about git push

* Objective:
 * Learn more about git push
* Steps:
 * Change into `$HOME/training`
 * Edit `README.md` and notes about `git push`
 * Add and commit the changes
 * Push the changes
* Bonus:
 * List all remote branches with `git branch -r`

!SLIDE supplemental exercises
# Lab ~~~SECTION:MAJOR~~~.~~~SECTION:MINOR~~~: Learn more about git push

## Objective: Learn more about git push
****

* Learn more about git push

## Steps:

* Change into `$HOME/training`
* Edit `README.md` and add notes about `git push`
* Add and commit the changes
* Push the changes

## Bonus:

* List all remote branches with `git branch -r`

!SLIDE supplemental solutions
# Lab ~~~SECTION:MAJOR~~~.~~~SECTION:MINOR~~~: Proposed Solution
****

## Learn more about git push

****

### Make changes

    @@@ Sh
    $ cd $HOME/training
    $ git checkout main

    $ vim README.md

    Now I know how to publish my changes to my NWS hosted GitLab server.

    $ git add README.md
    $ git commit -v README.md -m "Add docs for git push"

### Push changes

    @@@ Sh
    $ git push origin main

### List remote branches

    @@@ Sh
    $ git branch -r

!SLIDE
# Collaboration: Branch Tracking

A *tracking branch* is a local branch that is connected to a remote branch.

* We can now push without the need to be specific(`git push origin main`)
* Git can now inform you about "unpushed" and "unpulled" commits (`git status`)
* `git branch -a` lists all branches
* `git branch -vv` lists tracking branches

Example:

    @@@ Sh
    git branch -vv
      *master    f2cce0c [origin/master] Rename test directory
      wip-foobar d92a5ad Why wont it work?!

Hint: There are various `push` methods that can be configured

~~~SECTION:handouts~~~

****

There are various `push` methods:

* `simple` - pushes the current branch with the same name on the remote
* `current` - push the current branch to update a branch with the same name on the receiving end
* `nothing` - do not push anything (error out) unless a refspec is given

References:

https://git-scm.com/docs/git-config/#Documentation/git-config.txt-pushdefault

~~~ENDSECTION~~~

!SLIDE smbullets
# Lab ~~~SECTION:MAJOR~~~.~~~SECTION:MINOR~~~: Configure a tracking branch

* Objective:
 * Set the origin/main as tracking branch for main
* Steps:
 * Change into `$HOME/training`
 * Push with `git push` explain the error
 * Push with `git push --set-upstream origin main`
 * Push again with `git push`
* Bonus:
 * Verify the tracking branches with `git branch -vv`

!SLIDE supplemental exercises
# Lab ~~~SECTION:MAJOR~~~.~~~SECTION:MINOR~~~: Configure a tracking branch

## Objective: Set the origin/main as tracking branch for main
****

* Set the origin/main as tracking branch for main

## Steps:

* Change into `$HOME/training`
* Push with `git push` explain the error
* Push with `git push --set-upstream origin main`
* Push again with `git push`

## Bonus:

* Verify the tracking branches with `git branch -vv`

!SLIDE supplemental solutions
# Lab ~~~SECTION:MAJOR~~~.~~~SECTION:MINOR~~~: Proposed Solution
****

## Set the origin/main as tracking branch for main

****

### Make changes

    @@@ Sh
    $ cd $HOME/training
    $ git checkout main

    $ git push
    $ # fatal: The current branch foobar has no upstream branch.
    $ git push --set-upstream origin main
    $ git push

### List tracking branches

    @@@ Sh
    $ git branch -vv


!SLIDE smbullets
# Deleting Remote Branches

You have learned that you can create remote (feature) branches. But what if
you want to delete such branches?

`git push origin <branch>` is short for `git push origin <localbranch>:<remotebranch>`.

Pushing `NULL` into a remote branch will delete it.

`git push origin :<remotebranch>`

Hint: You can delete branches in GitLab/GitHub too.

!SLIDE smbullets
# Lab ~~~SECTION:MAJOR~~~.~~~SECTION:MINOR~~~: Delete remote branch

* Objective:
 * Delete remote branch
* Steps:
 * Change into `$HOME/training`
 * Create or identify a remote branch `feature/docs-wrong-name`
 * Delete the remote branch

!SLIDE supplemental exercises
# Lab ~~~SECTION:MAJOR~~~.~~~SECTION:MINOR~~~: Delete remote branch

## Objective: Delete remote branch
****

* Delete remote branch

## Steps:

* Change into `$HOME/training`
* Create or identify a remote branch `feature/docs-wrong-name`
* Delete the remote branch

!SLIDE supplemental solutions
# Lab ~~~SECTION:MAJOR~~~.~~~SECTION:MINOR~~~: Proposed Solution
****

## Delete remote branch

****

### Create and push remote branch

If you do not have any.

    @@@ Sh
    $ cd $HOME/training
    $ git checkout main
    $ git checkout -b feature/docs-wrong-name
    $ git push -u origin feature/docs-wrong-name

### Identify remote branch to delete

    @@@ Sh
    $ git branch -r
      feature/docs-wrong-name

### Delete remote branch

    @@@ Sh
    $ git push origin :feature/docs-wrong-name

Now verify it is gone (Hint: `-r` lists remote branches).

    @@@ Sh
    $ git fetch
    $ git branch -r

!SLIDE smbullets
# Collaboration: Get History

* `git fetch`
  * Downloads data from a remote repository
  * The changes from the remote repository are not integrated into local branches
* `git pull`
  * Downloads data from a remote repository and integrates them into local branches
  * git pull runs `git fetch` and either `git rebase` or `git merge` behind the scences

~~~SECTION:handouts~~~

****

`git fetch` downloads objects and references from another remote repository.

`git pull` invokes a fetch and updates the local history with commits from the remote repository.

~~~ENDSECTION~~~

!SLIDE smbullets
# Lab ~~~SECTION:MAJOR~~~.~~~SECTION:MINOR~~~: Learn more about git fetch and git pull

* Objective:
 * Learn more about git fetch and git pull
* Steps:
 * Go to your project repository in GitLab
 * Edit the `README.md` in your browser and commit the change to main
 * Run `git fetch` and explain `git diff main origin/main`
 * Run `git pull`
 * Explain the difference

!SLIDE supplemental exercises
# Lab ~~~SECTION:MAJOR~~~.~~~SECTION:MINOR~~~: Learn more about git fetch and git pull

## Objective: Learn more about git fetch and git pull
****

* Learn more about git fetch and git pull

## Steps:

* Go to your project repository in GitLab
* Edit the `README.md` in your browser and commit the change to main
* Run `git fetch` and explain `git diff main origin/main`
* Run `git pull`
* Explain the difference

## Bonus:

* Repeat push and pull multiple times

!SLIDE supplemental solutions
# Lab ~~~SECTION:MAJOR~~~.~~~SECTION:MINOR~~~: Proposed Solution
****

## Learn more about git fetch and git pull

****

### Go to GitLab, edit README.md and commit the change

Navigate into the `training` project and choose `Repository`.

Click on the `README.md` file and choose to `edit` it directly.
Add some documentation like `This change was done via GitLab web.`.

Stage and commit the change directly to main.

### Fetch changes

Change to the CLI again and fetch the changes.

    @@@ Sh
    $ git fetch

Compare this with your local commit history - you'll see that there are
not changes pulled yet.

    @@@ Sh
    $ git log
    $ git diff main origin/main

### Pull changes

    @@@ Sh
    $ git pull

Check the local commit history - now your local history has been
updated with the remote history.

    @@@ Sh
    $ git log
    $ git diff main origin/main
