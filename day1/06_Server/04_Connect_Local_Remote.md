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
  * NWS apps come pre-defined with HTTPS clone/fetch only
* New GitLab repository for this user
* Configure local repository for the remote server

~~~SECTION:handouts~~~

****

**SSH Keys**

Generate a new SSH key pair on your client.

```
ssh-keygen -t ed25519
```

Copy the public key into your GitLab settings.

```
cat $HOME/.ssh/id_ed25519.pub
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
# Lab ~~~SECTION:MAJOR~~~.~~~SECTION:MINOR~~~: Add the repository as remote origin

* Objective:
 * Add the GitLab project as remote origin
* Steps
 * Open the project in GitLab and extract the `HTTPS` clone URL
 * Navigate into your local repository in `$HOME/training`
 * Use `git remote add origin <https-remote-url>`
 * Push local branches with `git push -u origin --all`

* Bonus
 * Set default push method to `simple`

~~~SECTION:handouts~~~

****

There are various `push` methods:

* `simple` - pushes the current branch with the same name on the remote
* `current` - push the current branch to update a branch with the same name on the receiving end
* `nothing` - do not push anything (error out) unless a refspec is given

References:

https://git-scm.com/docs/git-config/#Documentation/git-config.txt-pushdefault


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
 * Use `git remote add origin <https-remote-url>`
* Push local branches with `git push -u origin --all`

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
    $ git remote add origin https://[...].nws.netways.de/root/training.git
    $ git fetch

### Push the history

    @@@ Sh
    $ git push

This will not work since the local branch does not follow the remote branch.
Use `--set-upstream` as proposed by the cli output. Short form is `-u`.

    @@@ Sh
    $ cd $HOME/training.git
    $ git remote add origin https://[...].nws.netways.de/root/training.git
    $ git push -u origin --all

### Set default push method

Git versions prior 2.0 did not define the default push method. The default behaviour
was to use the same local branch name for the remote branch name.

The new default method should be `simple` which ensures that the local branches
will only be pushed to remote branches which `git pull` is following.

Our setup did not clone the repository (which includes a virtual git pull). Therefore
the local main branch does not follow a remote branch.

In order to fix that, add the default push method to your global configuration.

    @@@ Sh
    git config --global push.default simple

### Push and update all branches

`git push -u origin main` creates a new remote branch, updates the tracking to the
local current branch and pushes all references/commits.

If you want to sync all local branches, you can omit the branch name in the command and
use `--all` instead.

    @@@ Sh
    git push -u origin --all

Keep in mind that syncing all your local branches might create unwanted remote branches.
Those can be there just for testing things, or are not meant for the public domain.


!SLIDE smbullets
# Lab ~~~SECTION:MAJOR~~~.~~~SECTION:MINOR~~~: Add a credential cache

* Objective:
 * Add the credentail cache to the configuration
* Steps
 * Go to your terminal
 * Use `git config credential.helper 'cache --timeout=99999'`

This is only for the training. In reality use SSH authentication.

~~~SECTION:handouts~~~

****


~~~ENDSECTION~~~

!SLIDE supplemental exercises
# Lab ~~~SECTION:MAJOR~~~.~~~SECTION:MINOR~~~: Add a credential cache

## Objective: Add the credentail cache to the configuration
****

* Add the credentail cache to the configuration

## Steps:

****

* Go to your terminal
* Use `git config credential.helper 'cache --timeout=99999'`

This is only for the training. In reality use SSH authentication.

!SLIDE supplemental solutions
# Lab ~~~SECTION:MAJOR~~~.~~~SECTION:MINOR~~~: Proposed Solution
****

## Add a credential cache

****

### Add a credential cache

    @@@ Sh
    $ cd $HOME/training.git
    $ git config credential.helper 'cache --timeout=99999'

This will make git save the credentials you enter the first time you
interact with the server and use them for `99999` seconds before you need to re-enter them.

This is only for the training. In reality use SSH authentication.

!SLIDE smbullets
# Lab ~~~SECTION:MAJOR~~~.~~~SECTION:MINOR~~~: Explore Project History

* Objective:
 * Learn more about GitLab and the project's history
 * Compare the local history to the remote project's history
* Steps:
 * Click on `History` in the project view and examine the Git commits
 * Run `git log` or `tig` on your shell and compare them to GitLab
* Bonus:
 * Use `Repository > Graph` in GitLab

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

## Bonus:

* Use `Repository > Graph` in GitLab

!SLIDE supplemental solutions
# Lab ~~~SECTION:MAJOR~~~.~~~SECTION:MINOR~~~: Proposed Solution
****

## Examine GitLab's project history

****

### Project History

Choose `History` and look at the Git commits, their author, subject and timestamp.

Compare it with the local `git log` or `tig` entries. 

### GitLab Graphs

Navigate into `Repository > Graph` to get an alternative history view.

