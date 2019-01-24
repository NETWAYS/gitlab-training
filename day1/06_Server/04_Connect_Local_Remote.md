!SLIDE smbullets
# Connect Local Repository to Remote Server

* Local standalone repository
* Connect to remote server
* Clone, Pull, Fetch, Push via SSH/HTTPS

You can also start fresh without any local repository
and clone that from remote.

For training purposes we've started to work offline in `$HOME/training`.
Now we want to publish the local commits to a newly created Git repository
in GitLab.

~~~SECTION:handouts~~~

****



~~~ENDSECTION~~~

!SLIDE smbullets
# Requirements

* SSH or HTTPS auth
  * NWS apps come pre-defined with HTTPS clone/fetch only.
* New GitLab repository for this user
* Configure local repository for the remote server



~~~SECTION:handouts~~~

****

# SSH Keys

Generate a new SSH key pair on your client.

```
ssh-keygen
```

Copy the public key into your GitLab settings.

```
cat $HOME/.ssh/id_rsa.pub
```

User > Settings > SSH Keys


~~~ENDSECTION~~~


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
 * Learn about the project view and the HTTPS clone URL

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

* Learn about the project view and the HTTPS clone URL


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

You'll notice the `HTTPS` URL centered below the project name.

We will be using this remote URL for connecting our local repository
in the next step.

Right now the repository is empty and does not contain any file.
GitLab offers you to add new files, e.g. a README.md file or LICENSE details
directly in the browser. In the background, it is still comitting
the changes to the Git repository.



!SLIDE smbullets
# Lab ~~~SECTION:MAJOR~~~.~~~SECTION:MINOR~~~: Configure Client Credentials Helper

* Objective:
 * Configure client credentials helper
* Steps:
 * Install the helper with `yum -y install git-gnome-keyring`
 * Run `git config --global credential.helper /usr/libexec/git-core/git-credential-gnome-keyring`
 * Verify this setting in `~/.gitconfig`

Navigate into `NWS > GitLab App View > FAQ > Why do we recommend HTTPS over SSH?`
and select `git credential helpers`.

~~~SECTION:handouts~~~

****


~~~ENDSECTION~~~

!SLIDE supplemental exercises
# Lab ~~~SECTION:MAJOR~~~.~~~SECTION:MINOR~~~: Configure client credentials helper

## Objective: Configure client credentials helper
****

 * Configure client credentials helper

## Steps:

****

* Install the helper with `yum -y install git-gnome-keyring`
* Run `git config --global credential.helper /usr/libexec/git-core/git-credential-gnome-keyring`
* Verify this setting in `~/.gitconfig`

Navigate into `NWS > GitLab App View > FAQ > Why do we recommend HTTPS over SSH?`
and select `git credential helpers`.

!SLIDE supplemental solutions
# Lab ~~~SECTION:MAJOR~~~.~~~SECTION:MINOR~~~: Proposed Solution
****

## Configure client credentials helper

****

### Installation

    @@@ Sh
    $ sudo yum -y install git-gnome-keyring

### Verify and set

    @@@ Sh
    $ git config --global --get credential.helper
    /usr/libexec/git-core/git-credential-gnome-keyring

If not set, you can set it explicitly.

    @@@ Sh
    $ git config --global credential.helper /usr/libexec/git-core/git-credential-gnome-keyring

### Verify

    @@@ Sh
    $ cat ~/.gitconfig


!SLIDE smbullets
# Lab ~~~SECTION:MAJOR~~~.~~~SECTION:MINOR~~~: Add the repository as remote origin

* Objective:
 * Add the GitLab project as remote origin
* Steps
 * Open the project in GitLab and extract the `HTTPS` clone URL
 * Navigate into your local repository in `$HOME/training`
 * Use `git remote add origin <remoteurl>`
 * Push your local branch with `--set-upstream` (short: `-u`)
* Bonus
 * Set default push method to `simple`
 * Explain what `git push -u origin --all` does suggested by GitLab

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

* Open the project in GitLab and extract the `HTTPS` clone URL
* Navigate into your local repository
* Use `git remote add origin <remoteurl>`
* Push your local branch
* Use `--set-upstream` (short: `-u`) to enable the local branch tracking the remote repository 

## Bonus:

****

* Configure the default push method to `simple`
* Explain what `git push -u origin --all` does suggested by GitLab

!SLIDE supplemental solutions
# Lab ~~~SECTION:MAJOR~~~.~~~SECTION:MINOR~~~: Proposed Solution
****

## Add the repository as remote origin

****

### Add the remote origin

    @@@ Sh
    $ cd $HOME/training.git
    $ git remote add origin https://[...].nws.netways.de/root/training.git
    $ git fetch

### Push the history

    @@@ Sh
    $ git push

This will not work since the local branch does not follow the remote branch.
Use `--set-upstream` as proposed by the cli output. Short form is `-u`.

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

### Push and update all branches

`git push -u origin master` creates a new remote branch, updates the tracking to the
local current branch and pushes all references/commits.

If you want to sync all local branches, you can omit the branch name in the command and
use `--all` instead.

    @@@ Sh
    git push -u origin --all

Keep in mind that syncing all your local branches might create unwanted remote branches.
Those can be there just for testing things, or are not meant for the public domain.

!SLIDE smbullets
# Lab ~~~SECTION:MAJOR~~~.~~~SECTION:MINOR~~~: Explore Project History

* Objective:
 * Learn more about GitLab and the project's history
 * Compare the local history to the remote project's history
* Steps:
 * Click on `History` in the project view and examine the Git commits
 * Run `git log` or `tig` on your shell and compare them to GitLab

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
* Run `git log` or `tig` on your shell and compare them to GitLab


!SLIDE supplemental solutions
# Lab ~~~SECTION:MAJOR~~~.~~~SECTION:MINOR~~~: Proposed Solution
****

## Examine GitLab's project history

****

### Project History

Choose `History` and look at the Git commits, their author, subject and timestamp.

Compare it with the local `git log` or `tig` entries. 



