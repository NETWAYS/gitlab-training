!SLIDE smbullets
# Amend changes to commits

`git commit --amend` is a convenient way to modify the most recent commit.

* Change the commit message (e.g. typos or better phrasing)
* Fix a bug in already commited files
* Add missing files into the last commit

If you amend changes to a specific commit, a new unique commit ID is generated.

This changes the Git history and we will learn later this might cause issues when collaborating.

~~~SECTION:handouts~~~

****

Amending other commits in Git history is also possible, explained later with `git rebase`.

~~~ENDSECTION~~~

!SLIDE smbullets
# Lab ~~~SECTION:MAJOR~~~.~~~SECTION:MINOR~~~: Amend changes to commits

* Objective:
 * Use git amend
* Steps:
 * Change into `$HOME/training`
 * Modify README.md and add more text
 * Add README.md to the staging area and commit the change
 * Edit README.md again and add it to the staging area
 * Use `git commit --amend README.md` and explain what happens
* Bonus:
 * Edit the commit message using `git commit --amend`

!SLIDE supplemental exercises
# Lab ~~~SECTION:MAJOR~~~.~~~SECTION:MINOR~~~: Amend changes to commits

## Objective: Use git amend
****

* Use git amend

## Steps:

****

* Change into `$HOME/training`
* Modify README.md and add more text
* Add README.md to the staging area and commit the change
* Edit README.md again and add it to the staging area
* Use `git commit --amend README.md` to add the change to the previous commit

## Bonus:

* Adopt the commit message using `git commit --amend`

!SLIDE supplemental solutions
# Lab ~~~SECTION:MAJOR~~~.~~~SECTION:MINOR~~~: Proposed Solution
****

## Amend changes to commits

****

### Add the files

    @@@ Sh
    $ cd $HOME/training

    $ vim README.md

    `git commit --amend` adds missing changes to the previous commit.

### Add README.md to the staging area and commit the change

    @@@ Sh
    $ git add README.md
    $ git status
    $ git commit -v README.md -m "Add documentation for Amend"

### Add a note to README.md again

    @@@ Sh
    $ vim README.md

    `git commit --amend` adds missing changes to the previous commit.
    I'm also able to edit the commit message.

    $ git add README.md
    $ git status

### Amend README.md to the previous commit

    @@@ Sh
    $ git commit --amend -v README.md
      Add documentation for 'git amend'

Adopt the commit message as additional exercise above.

    @@@ Sh
    $ git status
    $ git show
