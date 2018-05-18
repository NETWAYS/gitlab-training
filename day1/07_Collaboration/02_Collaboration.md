!SLIDE smbullets
# Collaboration with others

* `git fetch`
  * Update the remote branch reference pointers to the latest commit and cache it locally.
  * Does not pull in any remote commit history.
* `git pull`
  * Fetch and update the local history from remote repository (implicit fetch).
  * This pulls in source code changes and commits.

~~~SECTION:handouts~~~

****

`git fetch` downloads objects and references from another remote repository.

`git pull` invokes a fetch and updates the local history with commits from the remote repository.


~~~ENDSECTION~~~


!SLIDE smbullets
# Collaboration with others

* `git push`
  * Update remote references and push local history to remote repository.
  * This pushes source code changes and commits.
  * Halts if the remote history diverged from your local history.
* `git remote`
  * Configure/list remote repository URLs (default `origin`).

~~~SECTION:handouts~~~

****


`git push` updates remote references and pushes your local commit history to the remote repository.

`git remote` allows you to configure and list the remote repository. By default this is called `origin`.

~~~ENDSECTION~~~

!SLIDE smbullets
# Lab ~~~SECTION:MAJOR~~~.~~~SECTION:MINOR~~~: Learn more about git push

* Objective:
 * Learn more about git push
* Steps:
 * Change into `$HOME/training`
 * Edit `README.md` and add a note on `git push`
 * Add and commit the changes
 * Push the changes

~~~SECTION:handouts~~~

****

~~~ENDSECTION~~~

!SLIDE supplemental exercises
# Lab ~~~SECTION:MAJOR~~~.~~~SECTION:MINOR~~~: Learn more about git push

## Objective: Learn more about git push
****

* Learn more about git push

## Steps:

* Change into `$HOME/training`
* Edit `README.md` and add a note on `git push`
* Add and commit the changes
* Push the changes

!SLIDE supplemental solutions
# Lab ~~~SECTION:MAJOR~~~.~~~SECTION:MINOR~~~: Proposed Solution
****

## Learn more about git push

****

### Make changes

    @@@ Sh
    $ cd $HOME/training
    $ git checkout master

    $ vim README.md

    Now I know how to publish my changes to my NWS hosted GitLab server.

    $ git add README.md
    $ git commit -v README.md -m "Add docs for git push"

### Push changes

    @@@ Sh
    $ git push origin master

!SLIDE smbullets
# Lab ~~~SECTION:MAJOR~~~.~~~SECTION:MINOR~~~: Learn more about git fetch and git pull

* Objective:
 * Learn more about git fetch and git pull
* Steps:
 * Reset your local commit history by one with `git reset --hard HEAD^`
 * Fetch and pull changes from remote
 * Explain the difference
* Bonus:
 * Repeat push and pull multiple times

~~~SECTION:handouts~~~

****

~~~ENDSECTION~~~

!SLIDE supplemental exercises
# Lab ~~~SECTION:MAJOR~~~.~~~SECTION:MINOR~~~: Learn more about git fetch and git pull

## Objective: Learn more about git fetch and git pull
****

* Learn more about git fetch and git pull

## Steps:

* Reset your local commit history by one with `git reset --hard HEAD^`
* Fetch and pull changes from remote
* Explain the difference

## Bonus:

* Repeat push and pull multiple times

!SLIDE supplemental solutions
# Lab ~~~SECTION:MAJOR~~~.~~~SECTION:MINOR~~~: Proposed Solution
****

## Learn more about git fetch and git pull

****

### Reset your local commit history by one

    @@@ Sh
    $ git log
    $ git reset --hard HEAD^
    $ git log

### Fetch changes

    @@@ Sh
    $ git fetch

Compare this with your local commit history - you'll see that there are
not changes pulled yet.

    @@@ Sh
    $ git log

### Pull changes

    @@@ Sh
    $ git pull

Check the local commit history - now your local history has been
updated with the remote history.

    @@@ Sh
    $ git log

