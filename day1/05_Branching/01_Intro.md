!SLIDE subsection
# ~~~SECTION:MAJOR~~~ Git Branching


!SLIDE smbullets
# Working with Git branches

A git branch creates a new history line starting from the current
git commit.

Branches are useful to develop features/fixes in their isolated
environment.

* Master branch
* Develop a new feature in a dedicated branch
* Put fixes into the master branch (production)
* Continue to work on the feature

!SLIDE smbullets
# Git Branch CLI commands

* `git branch`
  * List, create and delete branches.
* `git checkout`
  * Switch branches.
  * Restore the working tree.

~~~SECTION:handouts~~~

****

`git branch` allows you to list, create and delete branches.

`git checkout` will switch between branches, or restore your current working tree.

~~~ENDSECTION~~~


!SLIDE smbullets
# Lab ~~~SECTION:MAJOR~~~.~~~SECTION:MINOR~~~: Show the current branch

* Objective:
 * Show the current branch
* Steps:
 * Change into `$HOME/training`
 * Use `git branch` to highlight the current branch

~~~SECTION:handouts~~~

****

~~~ENDSECTION~~~

!SLIDE supplemental exercises
# Lab ~~~SECTION:MAJOR~~~.~~~SECTION:MINOR~~~: Show the current branch

## Objective: Show the current branch
****

* Show the current branch

## Steps:

****

* Change into `$HOME/training`
* Use `git branch` to highlight the current branch


!SLIDE supplemental solutions
# Lab ~~~SECTION:MAJOR~~~.~~~SECTION:MINOR~~~: Proposed Solution
****

## Show the current branch

****

### Example

    @@@ Sh
    $ cd $HOME/training

    $ git branch
    * master


!SLIDE smbullets
# Lab ~~~SECTION:MAJOR~~~.~~~SECTION:MINOR~~~: Create and checkout a new branch

* Objective:
 * Create and checkout a new branch
* Steps:
 * Change into `$HOME/training`
 * Create a new branch `feature/docs` based off `master` with `git branch feature/docs master`
 * List the branches with `git branch`
 * Checkout the new branch with `git checkout feature/docs`
* Bonus:
 * Explain `git checkout -b feature/docs2`

~~~SECTION:handouts~~~

****

~~~ENDSECTION~~~

!SLIDE supplemental exercises
# Lab ~~~SECTION:MAJOR~~~.~~~SECTION:MINOR~~~: Create and checkout a new branch

## Objective: Create and checkout a new branch
****

* Create and checkout a new branch

## Steps:

****

* Change into `$HOME/training`
* Create a new branch `feature/docs` based off `master` with `git branch feature/docs master`
* List the branches with `git branch`
* Checkout the new branch with `git checkout feature/docs`

## Bonus:

* Verify how `git checkout -b feature/docs2` works
* Explain how it helps here

****

!SLIDE supplemental solutions
# Lab ~~~SECTION:MAJOR~~~.~~~SECTION:MINOR~~~: Proposed Solution
****

## Create and checkout a new branch

****

### Create the branch

    @@@ Sh
    $ cd $HOME/training

    $ git branch feature/docs master

### List the branches

    @@@ Sh
    $ git branch
    * master
      feature/docs

### Checkout the created branch

    @@@ Sh
    $ git checkout feature/docs
    $ git branch
      master
    * feature/docs

### Use it all at once

`git checkout -b` creates a new branch from the current branch
and does the checkout afterwards. That way you'll safe some time
when working with branches quite often.

    @@@ Sh
    $ git checkout master
    $ git checkout -b feature/docs2


!SLIDE smbullets
# Lab ~~~SECTION:MAJOR~~~.~~~SECTION:MINOR~~~: Delete the branch

* Objective:
 * Delete the previously created branch
* Steps:
 * Change into `$HOME/training`
 * Switch to the master branch
 * Use `git branch -d` to delete the selected branch
* Bonus:
 * Try to delete the branch you are currently on

~~~SECTION:handouts~~~

****

~~~ENDSECTION~~~

!SLIDE supplemental exercises
# Lab ~~~SECTION:MAJOR~~~.~~~SECTION:MINOR~~~: Delete the branch

## Objective: Delete the branch
****

* Delete the previously created branch

## Steps:

****

* Change into `$HOME/training`
* Switch to the master branch
* Use `git branch -d feature/docs2` to delete the selected branch

## Bonus:

****

* Try to delete the branch you are currently on

!SLIDE supplemental solutions
# Lab ~~~SECTION:MAJOR~~~.~~~SECTION:MINOR~~~: Proposed Solution
****

## Delete the branch

****

### Checkout the master branch

    @@@ Sh
    $ cd $HOME/training

    $ git checkout master

### Delete the previously created branch

    @@@ Sh
    $ git branch -d feature/docs2

### Try to delete the current branch

    @@@ Sh
    $ git checkout master
    $ git branch -d master

