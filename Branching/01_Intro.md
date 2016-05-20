!SLIDE smbullets
# Working with Git branches

* git branch
* git checkout

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

* Use `git branch` to highlight the current branch


!SLIDE supplemental solutions
# Lab ~~~SECTION:MAJOR~~~.~~~SECTION:MINOR~~~: Proposed Solution
****

## Show the current branch

****

### Example

    @@@ Sh
    $ git branch
    * master


!SLIDE smbullets
# Lab ~~~SECTION:MAJOR~~~.~~~SECTION:MINOR~~~: Create and checkout a new branch

* Objective:
 * Create and checkout a new branch
* Steps:
 * Create a new branch from the current master branch
 * List the branches
 * Checkout the new branch
* Bonus:
 * Verify how `git checkout -b` works
 * Explain how it helps here

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

* Create a new branch from the current master branch
* List the branches
* Checkout the new branch

## Bonus:

* Verify how `git checkout -b` works
* Explain how it helps here

****

!SLIDE supplemental solutions
# Lab ~~~SECTION:MAJOR~~~.~~~SECTION:MINOR~~~: Proposed Solution
****

## Create and checkout a new branch

****

### Create the branch

    @@@ Sh
    $ git branch mybranch master

### List the branches

    @@@ Sh
    $ git branches
    * master
      mybranch

### Checkout the created branch

    @@@ Sh
    $ git checkout mybranch
    $ git branch
      master
    * mybranch

### Use it all at once

`git checkout -b` creates a new branch from the current branch
and does the checkout afterwards. That way you'll safe some time
when working with branches quite often.

    @@@ Sh
    $ git checkout master
    $ git checkout -b mybranch2


!SLIDE smbullets
# Lab ~~~SECTION:MAJOR~~~.~~~SECTION:MINOR~~~: Delete the branch

* Objective:
 * Delete the previously created branch
* Steps:
 * Switch to the master branch
 * Use `git branch -D` to delete the selected branch
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

* Switch to the master branch
* Use `git branch -D` to delete the selected branch

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
    $ git checkout master

### Delete the previously created branch

    @@@ Sh
    $ git branch -D mybranch

### Try to delete the current branch

    @@@ Sh
    $ git checkout master
    $ git branch -D master

