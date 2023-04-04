!SLIDE smbullets
# Examine the current state

* `git status`
  * Shows current working tree status
  * Shows modified files and untracked files
  * Shows what is in the staging area
  * `--short` can be used for less output

~~~SECTION:handouts~~~

****

`git status` shows the current working tree status.
Untracked files and changes (not) staged for a commit.

~~~ENDSECTION~~~

!SLIDE smbullets
# Lab ~~~SECTION:MAJOR~~~.~~~SECTION:MINOR~~~: Examine current changes

* Objective:
 * Examine current changes
* Steps:
 * Change into `$HOME/training`
 * Edit README.md and add more text
 * Use `git status` to see unstaged changes
 * Add the changed files to the staging area
 * Use `git status` again

!SLIDE supplemental exercises
# Lab ~~~SECTION:MAJOR~~~.~~~SECTION:MINOR~~~: Examine current changes

## Objective: Examine current changes
****

* Examine current changes

## Steps:

* Change into `$HOME/training`
* Edit README.md
* Use `git status` to see unstaged changes
* Add the changed files to the staging area
* Use `git status` again


!SLIDE supplemental solutions
# Lab ~~~SECTION:MAJOR~~~.~~~SECTION:MINOR~~~: Proposed Solution
****

## Examine current changes

****

### Change files

    @@@ Sh
    $ cd $HOME/training

    $ vim README.md
    # Git Training Notes

    I've learned about `git add` already

    ```
    git status
    ```

Modify and save the file.

### Use git status

    @@@ Sh
    $ git status

You'll recognize the unstaged changes compared to your staging area.

### Add the change to the staging area

    @@@ Sh
    $ git add README.md

### Use git status again

    @@@ Sh
    $ git status


!SLIDE smbullets
# Examine the current state: Diff

* `git diff`
  * Compares changes between modified working tree and latest commit
  * The output is a unified diff similar to `diff -ur file1 file2`

Later we will learn how to compare other objects (i.e. commits and branches).

~~~SECTION:handouts~~~

****

`git diff` shows changes between the current working tree and the last commit. You can also compare specific commits.

~~~ENDSECTION~~~

!SLIDE smbullets
# Lab ~~~SECTION:MAJOR~~~.~~~SECTION:MINOR~~~: Use Git Diff

* Objective:
 * Use `git diff`
* Steps:
 * Change into `$HOME/training`
 * Edit README.md
 * Use `git diff` to compare unstaged changes
 * Add the changed file to the staging area
 * Use `git diff` again
 * Explain what `git diff --staged` does

!SLIDE supplemental exercises
# Lab ~~~SECTION:MAJOR~~~.~~~SECTION:MINOR~~~: Use Git Diff

## Objective: Play with Git Diff
****

* Use `git diff`

## Steps:

* Change into `$HOME/training`
* Edit README.md
* Use `git diff` to compare unstaged changes
* Add the changed file to the staging area
* Use `git diff` again
* Explain what `git diff --staged` does

!SLIDE supplemental solutions
# Lab ~~~SECTION:MAJOR~~~.~~~SECTION:MINOR~~~: Proposed Solution
****

## Play with Git Diff

****

### Change files

    @@@ Sh
    $ vim README.md

    I've also learned the difference between local changes and the staging area.

Modify and save the file.

### Use git diff

    @@@ Sh
    $ git diff

You'll recognize the unstaged changes compared to your staging area.

### Add the change to the staging area

    @@@ Sh
    $ git add README.md

### Use git diff again

    @@@ Sh
    $ git diff

### Use git diff --staged

    @@@ Sh
    $ git diff --staged

This compares the staged changes for the commit with the latest committed changes.
