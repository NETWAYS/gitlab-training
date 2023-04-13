!SLIDE smbullets
# Start a project

* `git clone`
  * Clones a copy of an existing remote repository (i.e. from GitLab)
  * Can be modified with `--depth=5`
* `git init`
  * Initializes a local empty Git repository

~~~SECTION:handouts~~~

****

`git clone` clones a copy of an existing remote Git repository

`git init` initializes an empty directory as local Git repository

When you clone a repository, Git automatically adds a shortcut called
`origin` that points back to the "parent" repository, under the assumption
that you'll want to interact with it further on down the road. This is
called an `origin`.

~~~ENDSECTION~~~

!SLIDE smbullets
# Lab ~~~SECTION:MAJOR~~~.~~~SECTION:MINOR~~~: Clone an existing Git repository

* Objective:
 * Clone an existing Git repository
* Steps:
 * Navigate to https://github.com/icinga/icinga2
 * Copy the clone URL
 * Navigate into your home directory
 * Use `git clone` to clone the remote Git repository

!SLIDE supplemental exercises
# Lab ~~~SECTION:MAJOR~~~.~~~SECTION:MINOR~~~: Clone an existing Git repository

## Objective: Clone an existing Git repository
****

* Clone an existing Git repository

## Steps:

****

* Navigate to https://github.com/icinga/icinga2
* Copy the clone URL
* Navigate into your home directory
* Use `git clone` to clone the remote Git repository

!SLIDE supplemental solutions
# Lab ~~~SECTION:MAJOR~~~.~~~SECTION:MINOR~~~: Proposed Solution
****

## Clone an existing Git repository

****

### Git clone

    @@@ Sh
    $ cd $HOME
    $ git clone https://github.com/Icinga/icinga2.git

!SLIDE smbullets
# Lab ~~~SECTION:MAJOR~~~.~~~SECTION:MINOR~~~: Initialize a local Git repository

* Objective:
 * Initialize a new Git repository
* Steps:
 * Create a new directory called `training` in your home directory
 * Change into it
 * Run `git init`

We will be working inside this `training` directory unless noted otherwise.

!SLIDE supplemental exercises
# Lab ~~~SECTION:MAJOR~~~.~~~SECTION:MINOR~~~: Initialize a local Git repository

## Objective: Initialize Git repository
****

* Initialize Git repository

## Steps:

****

* Create a new directory called `training` in your home directory
* Change into it
* Run `git init`

!SLIDE supplemental solutions
# Lab ~~~SECTION:MAJOR~~~.~~~SECTION:MINOR~~~: Proposed Solution
****

## Initialize Git repository

****

### Create a new Git repository

    @@@ Sh
    $ cd $HOME
    $ mkdir training
    $ cd training
    $ git init
