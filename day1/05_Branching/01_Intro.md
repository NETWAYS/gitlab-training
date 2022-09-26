!SLIDE subsection
# ~~~SECTION:MAJOR~~~ Git Branching


!SLIDE smbullets
# Working with Git branches

A git branch creates a new history line starting from the current
git commit.

Branches are useful to develop features/fixes in their isolated
environment.

* Main branch
  * Note: Historically it was `master`, many vendors are now moving to `main`
* Develop a new feature in a dedicated branch
* Put fixes into the main branch (production)
* Continue to work on the feature

!SLIDE smbullets
# Git Branch CLI commands

* `git branch`
 * Create new branch without leaving the current one
 * Delete branches
 * List branches
* `git checkout`
  * Switch between branches

~~~SECTION:handouts~~~

****

`git branch` allows you to list, create and delete branches.

`git checkout` will switch between branches.

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
    * main


!SLIDE smbullets
# Lab ~~~SECTION:MAJOR~~~.~~~SECTION:MINOR~~~: Create and checkout a new branch

* Objective:
 * Create and checkout a new branch
* Steps:
 * Change into `$HOME/training`
 * Create a new branch `feature/docs` based off `main` with `git branch feature/docs main`
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
* Create a new branch `feature/docs` based off `main` with `git branch feature/docs main`
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

    $ git branch feature/docs main

### List the branches

    @@@ Sh
    $ git branch
    * main
      feature/docs

### Checkout the created branch

    @@@ Sh
    $ git checkout feature/docs
    $ git branch
      main
    * feature/docs

### Use it all at once

`git checkout -b` creates a new branch from the current branch
and does the checkout afterwards. That way you'll safe some time
when working with branches quite often.

    @@@ Sh
    $ git checkout main
    $ git checkout -b feature/docs2


!SLIDE smbullets
# Lab ~~~SECTION:MAJOR~~~.~~~SECTION:MINOR~~~: Delete the branch

* Objective:
 * Delete the previously created branch
* Steps:
 * Change into `$HOME/training`
 * Switch to the main branch
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
* Switch to the main branch
* Use `git branch -d feature/docs2` to delete the selected branch

## Bonus:

****

* Try to delete the branch you are currently on

!SLIDE supplemental solutions
# Lab ~~~SECTION:MAJOR~~~.~~~SECTION:MINOR~~~: Proposed Solution
****

## Delete the branch

****

### Checkout the main branch

    @@@ Sh
    $ cd $HOME/training

    $ git checkout main

### Delete the previously created branch

    @@@ Sh
    $ git branch -d feature/docs2

### Try to delete the current branch

    @@@ Sh
    $ git checkout main
    $ git branch -d main

