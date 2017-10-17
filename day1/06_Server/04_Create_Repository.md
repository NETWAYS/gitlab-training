!SLIDE smbullets

# Lab ~~~SECTION:MAJOR~~~.~~~SECTION:MINOR~~~: Create a GitLab repository

* Objective:
 * Add a new organisation called `training`
 * Add the `training` repository
* Steps
 * Navigate into your local repository
 * Use `git remote add origin git@localhost:/opt/git/training.git` to add the origin
 * Push your local history
 * Use `--set-upstream` to enable the local branch following the remote repository
* Bonus
 * Configure the default push method to `simple`


~~~SECTION:handouts~~~

****


~~~ENDSECTION~~~

!SLIDE supplemental exercises
# Lab ~~~SECTION:MAJOR~~~.~~~SECTION:MINOR~~~: Add the repository as remote origin

## Objective: Add the repository as remote origin
****

* Add the repository as remote origin

## Steps:

****

* Navigate into your local repository
* Use `git remote add origin git@localhost:/opt/git/training.git` to add the origin
* Push your local history
* Use `--set-upstream` to enable the local branch following the remote repository

## Bonus:

****

* Configure the default push method to `simple`

!SLIDE supplemental solutions
# Lab ~~~SECTION:MAJOR~~~.~~~SECTION:MINOR~~~: Proposed Solution
****

## Add the repository as remote origin

****

### Add the remote origin

    @@@ Sh
    $ cd $HOME/training.git
    $ git remote add origin git@localhost:/opt/git/training.git
    $ git fetch

### Push the history

    @@@ Sh
    $ git push

This will not work since the local branch does not follow the remote branch.
Use `--set-upstream` as proposed by the cli output.

    @@@ Sh
    $ git push --set-upstream origin master

### Set default push method

Git versions prior 2.0 did not define the default push method. The default behaviour
was to use the same local branch name for the remote branch name.

The new default method should be `simple` which ensures that the local branches
will only be pushed to remote branches which `git pull` is following.

Our setup did not clone the repository (which includes a virtual git pull). Therefore
the local master branch does not follow a remote branch.

In order to fix that, add the default push method to your global configuration.

    @@@ Sh
    git config --global push.default simple



!SLIDE smbullets
TODO: Gitlab - new repository

# Lab ~~~SECTION:MAJOR~~~.~~~SECTION:MINOR~~~: Add the repository as remote origin

TODO:

* Objective:
 * Use your local repository and add the `training.git` remote origin
