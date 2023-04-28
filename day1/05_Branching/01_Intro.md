!SLIDE subsection
# ~~~SECTION:MAJOR~~~ Git Branching

!SLIDE
# Working with Git branches

Branches are useful to develop features/fixes in an isolated
environment.

* The default branch is usually called `main`
  * Note: Historically it was `master`, many vendors are now moving to `main`
* We can create dedicated branches for development
* We can switch branches to work on things in parallel
* Once we are done developing we merge the dedicated branch into `main`

<center><img src="../../_images/mermaid/workflow-branches.mmd.png" alt="Feature Branch Workflow" width="50%" /></center>

!SLIDE smbullets
# Git Branch CLI commands

* `git branch`
 * Creates a new branch
 * Deletes existing branches
 * Lists all available branches
* `git checkout`
  * Switches between branches
* `git merge`
  * Incorporates commits from a branch into the current one

~~~SECTION:handouts~~~

****

`git branch` allows you to list, create and delete branches.

`git checkout` will switch between branches.

`git merge` incorporate commits from one branch into the current one.

~~~ENDSECTION~~~

!SLIDE smbullets
# Lab ~~~SECTION:MAJOR~~~.~~~SECTION:MINOR~~~: Show the current branch

* Objective:
 * Show the current branch
* Steps:
 * Change into `$HOME/training`
 * Use `git branch` to highlight the current branch

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
 * Explain `git checkout -b feature/more-docs`

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

* Verify how `git checkout -b feature/more-docs` works
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
    $ git checkout -b feature/more-docs

!SLIDE smbullets
# Lab ~~~SECTION:MAJOR~~~.~~~SECTION:MINOR~~~: Merge the branch

* Objective:
 * Use `git merge` to merge the new branch
* Steps:
 * Change into `$HOME/training`
 * Edit the README.md and commit the change
 * Switch to the main branch
 * Use `git merge feature/docs` to merge the branch

!SLIDE supplemental solutions
# Lab ~~~SECTION:MAJOR~~~.~~~SECTION:MINOR~~~: Proposed Solution
****

## Merge the branch

****

### Checkout the main branch

    @@@ Sh
    $ cd $HOME/training

    $ git checkout feature/docs
    $ vim README.md
    $ git add README.md
    $ git commit -m "Update README"

### Merge the branch

    @@@ Sh
    $ git checkout main
    $ git merge feature/docs

!SLIDE smbullets
# Lab ~~~SECTION:MAJOR~~~.~~~SECTION:MINOR~~~: Delete the branch

* Objective:
 * Delete the previously created branch
* Steps:
 * Change into `$HOME/training`
 * Use `git branch -d` to delete the feature/docs branch
* Bonus:
 * Try to delete the branch you are currently on

!SLIDE supplemental exercises
# Lab ~~~SECTION:MAJOR~~~.~~~SECTION:MINOR~~~: Delete the branch

## Objective: Delete the branch
****

* Delete the previously created branch

## Steps:

****

* Change into `$HOME/training`
* Switch to the main branch
* Use `git branch -d feature/docs` to delete the feature/docs branch

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
    $ git branch -d feature/docs

### Try to delete the current branch

    @@@ Sh
    $ git checkout main
    $ git branch -d main
