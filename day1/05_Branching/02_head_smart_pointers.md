!SLIDE smbullets
# HEAD and "smart pointers"

A git commit is unique and identified by its SHA1 checksum.

`HEAD` is a pointer to the latest commit in the current branch.

`HEAD^` identifies the second latest commit.

`HEAD~9` points to the tenth latest commit. Counting starts at zero.

This can be used for `git show`. More advanced techniques will be discussed later.

~~~SECTION:handouts~~~

~~~ENDSECTION~~~


!SLIDE smbullets
# Lab ~~~SECTION:MAJOR~~~.~~~SECTION:MINOR~~~: Show the second commit

* Objective:
 * Use `HEAD` and only show the second latest commit.
* Steps:
 * Change into `$HOME/training`
 * Combine `git show` with `HEAD^` or `HEAD~1`

~~~SECTION:handouts~~~

****

~~~ENDSECTION~~~

!SLIDE supplemental exercises
# Lab ~~~SECTION:MAJOR~~~.~~~SECTION:MINOR~~~: Show the second commit

## Objective: Show the second commit
****

* Show the second commit

## Steps:

****

* Change into `$HOME/training`
* Use `HEAD` and only show the second latest commit.


!SLIDE supplemental solutions
# Lab ~~~SECTION:MAJOR~~~.~~~SECTION:MINOR~~~: Proposed Solution
****

## Show the second commit

****

### Example

    @@@ Sh
    $ cd $HOME/training

    @@@ Sh
    $ git show HEAD^

or

    @@@ Sh
    $ git show HEAD~1




!SLIDE smbullets
# Branches and "smart pointers"

`feature/docs` as branch name also points to the latest commit.

You don't need to change branches to

* show different branch histories
* show specific commits where you don't know the commit id
* compare branches and committed code

Example:

    $ git show feature/docs
    commit b825ff86e4022a8fbcf52cb5a1d9a1984bd2a310 (feature/docs)

~~~SECTION:handouts~~~

~~~ENDSECTION~~~
!SLIDE smbullets
# Lab ~~~SECTION:MAJOR~~~.~~~SECTION:MINOR~~~: Show history of different branch

* Objective:
 * Use `git log` from the master branch on another branch
* Steps:
 * Create a new branch aside from master, if not existing: `git checkout -b feature/docs`
 * Switch to the master branch
 * Use `git log feature/docs`
* Bonus:
 * Modify and commit changes
 * Diff current HEAD against `feature/docs` branch

~~~SECTION:handouts~~~

****

~~~ENDSECTION~~~

!SLIDE supplemental exercises
# Lab ~~~SECTION:MAJOR~~~.~~~SECTION:MINOR~~~: Show history of different branch

## Objective: Delete the branch
****

* Use `git log` from the master branch on another branch

## Steps:

****

* Create a new branch aside from master, if not existing: `git checkout -b feature/docs`
* Switch to the master branch
* Use `git log feature/docs`

## Bonus:

****

* Modify and commit changes
* Diff current HEAD against `feature/docs` branch

!SLIDE supplemental solutions
# Lab ~~~SECTION:MAJOR~~~.~~~SECTION:MINOR~~~: Proposed Solution
****

## Show history of different branch

****

### Create a new branch

    @@@ Sh
    $ git checkout master
    $ git checkout -b feature/dpcs

### Switch to the master branch

    @@@ Sh
    $ git checkout master

### Show the history of the other branch

    @@@ Sh
    $ git show feature/docs

### Commit change on master

    @@@ Sh
    $ echo "I understand HEAD now" >> README.md
    $ git add README.md
    $ git commit -v README.md -m "What I've learned so far: HEAD"

### Show diff between HEAD and branch

    @@@ Sh
    $ git diff HEAD feature/docs
