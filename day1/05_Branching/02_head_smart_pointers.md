!SLIDE smbullets
# What is "HEAD" in Git?

`HEAD` is a pointer to the latest commit in the current branch.

`HEAD` can be used in Git commands as reference.

* `HEAD^` identifies the second latest commit.
* `HEAD~9` points to the tenth latest commit. Counting starts at zero.

Hint: Git stores this information in the file `.git/HEAD`.

!SLIDE smbullets
# Lab ~~~SECTION:MAJOR~~~.~~~SECTION:MINOR~~~: Show the second commit

* Objective:
 * Use `HEAD` and only show the second latest commit
* Steps:
 * Change into `$HOME/training`
 * Combine `git show` with `HEAD^` or `HEAD~1`

!SLIDE supplemental exercises
# Lab ~~~SECTION:MAJOR~~~.~~~SECTION:MINOR~~~: Show the second commit

## Objective: Show the second commit
****

* Show the second commit

## Steps:

****

* Change into `$HOME/training`
* Use `HEAD` and only show the second latest commit


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
# Branches and "HEAD"

Branch names are also pointers to their respective latest commit.

This means, you don't need to change branches to

* Show different branch histories
* Show specific commits where you don't know the commit ID
* Compare branches and committed code

Example:

    $ git show feature/docs
    commit b825ff86e4022a8fbcf52cb5a1d9a1984bd2a310 (feature/docs)


~~~SECTION:handouts~~~

****

We can view the content of the branch name pointer as such:

    cat .git/refs/heads/feature/foobar
    fefe5d45980e72488e633b8ffbb25293d22389886

~~~ENDSECTION~~~

!SLIDE smbullets
# Lab ~~~SECTION:MAJOR~~~.~~~SECTION:MINOR~~~: Show history of different branch

* Objective:
 * Use `git log` on the main branch and other branches
* Steps:
 * Create a new branch aside from main, if not existing: `git checkout -b feature/docs`
 * Switch to the main branch
 * Use `git log feature/docs`
* Bonus:
 * Modify and commit changes
 * Diff current HEAD against `feature/docs` branch

!SLIDE supplemental exercises
# Lab ~~~SECTION:MAJOR~~~.~~~SECTION:MINOR~~~: Show history of different branch

## Objective: Delete the branch
****

* Use `git log` on the main branch and other branches

## Steps:

****

* Create a new branch aside from main, if not existing: `git checkout -b feature/docs`
* Switch to the main branch
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

### Create a new branch, if not exisiting

    @@@ Sh
    $ git checkout main
    $ git checkout -b feature/dpcs

### Switch to the main branch

    @@@ Sh
    $ git checkout main

### Show the history of the other branch

    @@@ Sh
    $ git show feature/docs

### Commit change on main

    @@@ Sh
    $ echo "I understand HEAD now" >> README.md
    $ git add README.md
    $ git commit -v README.md -m "What I've learned so far: HEAD"

### Show diff between HEAD and branch

    @@@ Sh
    $ git diff HEAD feature/docs
