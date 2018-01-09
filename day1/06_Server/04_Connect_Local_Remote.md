!SLIDE smbullets
# Connect Local Repository to Remote Server

* Local standalone repository
* Connect to remote server
* Clone, Pull, Fetch, Push via SSH

~~~SECTION:handouts~~~

****

You can also start fresh without any local repository
and clone that from remote. For training purposes we've
started to work offline and learn the Git basics before
jumping into remote workflows.


~~~ENDSECTION~~~

!SLIDE smbullets
# Requirements

* SSH key pair on the client
* Public SSH key added to GitLab user
* New GitLab repository for this user
* Configure local repository for the remote server


!SLIDE smbullets
# Lab ~~~SECTION:MAJOR~~~.~~~SECTION:MINOR~~~: Generate public SSH key

* Objective:
 * Generate public SSH key
* Steps:
 * Use `ssh-keygen` to generate an SSH key

~~~SECTION:handouts~~~

****

This key will be pre-generated on training notebooks.


~~~ENDSECTION~~~

!SLIDE supplemental exercises
# Lab ~~~SECTION:MAJOR~~~.~~~SECTION:MINOR~~~: Generate public SSH key

## Objective: Generate public SSH key
****

* Generate public SSH key

## Steps:

****

* Use `ssh-keygen` to generate an SSH key


!SLIDE supplemental solutions
# Lab ~~~SECTION:MAJOR~~~.~~~SECTION:MINOR~~~: Proposed Solution
****

## Generate public SSH key

****

### Generate key

    @@@ Sh
    $ ssh-keygen


!SLIDE smbullets
# Lab ~~~SECTION:MAJOR~~~.~~~SECTION:MINOR~~~: Add public SSH key to GitLab user

* Objective:
 * Add public SSH key to GitLab user
* Steps:
 * Navigate into `User settings` (from the menu)
 * Choose `SSH Keys`
 * Paste your public SSH key from `$HOME/.ssh/id_rsa.pub` into the form
 * Save it

~~~SECTION:handouts~~~

****


~~~ENDSECTION~~~

!SLIDE supplemental exercises
# Lab ~~~SECTION:MAJOR~~~.~~~SECTION:MINOR~~~: Add public SSH key to GitLab user

## Objective: Add public SSH key to GitLab user
****

* Add public SSH key to GitLab user

## Steps:

****

* Navigate into `User settings` (from the menu)
* Choose `SSH Keys`
* Paste your public SSH key from `$HOME/.ssh/id_rsa.pub` into the form
* Save it


!SLIDE supplemental solutions
# Lab ~~~SECTION:MAJOR~~~.~~~SECTION:MINOR~~~: Proposed Solution
****

## Add public SSH key to GitLab user

****

### Navigate into User settings

GitLab changes the layout between major versions.
Using 10.x the user menu can be found on the right top corner.

Choose `Settings`.

### SSH Keys

The `SSH Keys` settings is located on the left menu.

### Paste SSH Key

Use your favorite editor/CLI command to copy paste
the public SSH key from `$HOME/.ssh/id_rsa.pub`
into the web form.

    @@@Sh
    $ cat $HOME/.ssh/id_rsa.pub

### Save

Click `Add key`.


!SLIDE smbullets
# Lab ~~~SECTION:MAJOR~~~.~~~SECTION:MINOR~~~: Create GitLab Project

* Objective:
 * Create a new GitLab project for the current user
* Steps:
 * Click the `+` icon next to the search field
 * Choose `New Project`
 * Add the name `training`
 * Leave it as `Private`
 * Create the project
* Note:
 * Learn about the project view and the SSH clone URL

~~~SECTION:handouts~~~

****


~~~ENDSECTION~~~

!SLIDE supplemental exercises
# Lab ~~~SECTION:MAJOR~~~.~~~SECTION:MINOR~~~: Create GitLab Project

## Objective: Create a new GitLab project for the current user
****

* Create a new GitLab project for the current user

## Steps:

****

* Click the `+` icon next to the search field
* Choose `New Project`
* Add the name `training`
* Leave it as `Private`
* Create the project

## Note:

****

* Learn about the project view and the SSH clone URL


!SLIDE supplemental solutions
# Lab ~~~SECTION:MAJOR~~~.~~~SECTION:MINOR~~~: Proposed Solution
****

## Create a new GitLab project for the current user

****
### Add Project

GitLab 10.x provides `New Project` underneath the `+` icon
in the top menu bar, next to the search form.

Fill in the `Project name` form with `training` and leave the
other options as default.

### Project View

You'll notice the `SSH` URL centered below the project name.

We will be using this remote URL for connecting our local repository
in the next step.

Right now the repository is empty and does not contain any file.
GitLab offers you to add new files, e.g. a README or LICENSE details
directly in the browser. In the background, it is still comitting
the changes to the Git repository.




!SLIDE smbullets
# Lab ~~~SECTION:MAJOR~~~.~~~SECTION:MINOR~~~: Add the repository as remote origin

* Objective:
 * Add the GitLab project as remote origin
* Steps
 * Navigate into your local repository
 * Use `` <----- TODO as remote origin URL
 * Push your local history
 * Use `--set-upstream` to enable the local branch tracking the remote repository 
* Bonus
 * Set default push method to `simple`

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
* Use `` <------ TODO as remote origin URL
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
    $ git remote add origin git@localhost:/opt/git/training.git <---- TODO
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
# Lab ~~~SECTION:MAJOR~~~.~~~SECTION:MINOR~~~: Explore Project History

* Objective:
 * Learn more about GitLab and the project's history
 * Compare the local history to the remote project's history
* Steps:
 * Click on `History` in the project view and examine the Git commits
 * Run `git log` on your shell and compare them to GitLab

~~~SECTION:handouts~~~

****



~~~ENDSECTION~~~

!SLIDE supplemental exercises
# Lab ~~~SECTION:MAJOR~~~.~~~SECTION:MINOR~~~: Explore Project History

## Objective: Learn more about the project history

****

* Learn more about GitLab and the project's history
* Compare the local history to the remote project's history

## Steps:

****

* Click on `History` in the project view and examine the Git commits
* Run `git log` on your shell and compare them to GitLab


!SLIDE supplemental solutions
# Lab ~~~SECTION:MAJOR~~~.~~~SECTION:MINOR~~~: Proposed Solution
****

## Examine GitLab's project history

****

### Project History

Choose `History` and look at the Git commits, their author, subject and timestamp.

Compare it with the local `git log` entries. 



