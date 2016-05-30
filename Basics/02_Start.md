!SLIDE smbullets
# Start a project

* `git init`: initialize a local git repository
* `git clone`: clone a copy of existing remote repository

~~~SECTION:handouts~~~

****

`git init` initializes an empty directory as local git repository.

`git clone` clones a copy of an existing remote git repository.

When you clone a repository, Git automatically adds a shortcut called
`origin` that points back to the "parent" repository, under the assumption
that you'll want to interact with it further on down the road.

~~~ENDSECTION~~~

!SLIDE smbullets
# Lab ~~~SECTION:MAJOR~~~.~~~SECTION:MINOR~~~: Initialize a local Git repository

* Objective:
 * Initialize git repository
* Steps:
 * Create a new directory called `training.git`
 * Change into it
 * Run `git init`

~~~SECTION:handouts~~~

****

~~~ENDSECTION~~~

!SLIDE supplemental exercises
# Lab ~~~SECTION:MAJOR~~~.~~~SECTION:MINOR~~~: Initialize a local Git repository

## Objective: Initialize git repository
****

* Initialize git repository

## Steps:

****

* Create a new directory called `training.git`
* Change into it
* Run `git init`



!SLIDE supplemental solutions
# Lab ~~~SECTION:MAJOR~~~.~~~SECTION:MINOR~~~: Proposed Solution
****

## Initialize git repository

****

### Create a new Git repository

    @@@ Sh
    $ mkdir training.git
    $ cd training.git
    $ git init



!SLIDE smbullets
# Lab ~~~SECTION:MAJOR~~~.~~~SECTION:MINOR~~~: Clone an existing Git repository

* Objective:
 * Clone an existing Git repository
* Steps:
 * Navigate to https://github.com/icinga/icinga2
 * Copy the clone URL
 * Use `git clone` to clone the remote Git repository

~~~SECTION:handouts~~~

****

~~~ENDSECTION~~~

!SLIDE supplemental exercises
# Lab ~~~SECTION:MAJOR~~~.~~~SECTION:MINOR~~~: Clone an existing Git repository

## Objective: Clone an existing Git repository
****

* Clone an existing Git repository

## Steps:

****

* Navigate to https://github.com/icinga/icinga2
* Copy the clone URL
* Use `git clone` to clone the remote Git repository



!SLIDE supplemental solutions
# Lab ~~~SECTION:MAJOR~~~.~~~SECTION:MINOR~~~: Proposed Solution
****

## Clone an existing Git repository

****

### Git clone

    @@@ Sh
    $ git clone https://github.com/Icinga/icinga2.git

