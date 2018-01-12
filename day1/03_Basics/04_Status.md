!SLIDE smbullets
# Examine the current state

* `git status`
  * Show current working tree status.
* `git diff`
  * Compare changes between working tree and latest commit.

~~~SECTION:handouts~~~

****

`git status` shows the current working tree status. Untracked files and changes (not) staged
for commit.

`git diff` shows changes between the current working tree and the last commit. You can
also compare specific commits.

~~~ENDSECTION~~~


!SLIDE smbullets
# Lab ~~~SECTION:MAJOR~~~.~~~SECTION:MINOR~~~: Examine current changes

* Objective:
 * Examine current changes
* Steps:
 * Edit README.md and add notes
 * Use `git status` to see unstaged changes
 * Add the changed files to the staging area
 * Use `git status` again

~~~SECTION:handouts~~~

****

~~~ENDSECTION~~~

!SLIDE supplemental exercises
# Lab ~~~SECTION:MAJOR~~~.~~~SECTION:MINOR~~~: Examine current changes

## Objective: Examine current changes
****

* Examine current changes

## Steps:

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
    $ vim README.md
    # Git Training Notes

    I've learned about `git add` already.

    ```
    git add -A
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
# Lab ~~~SECTION:MAJOR~~~.~~~SECTION:MINOR~~~: Use Git Diff

* Objective:
 * Play with `git diff`
* Steps:
 * Edit README.md
 * Use `git diff` to compare unstaged changes
 * Add the changed file to the staging area
 * Use `git diff` again
 * Compare the staging area with the latest commit in `.git repository`

~~~SECTION:handouts~~~

****

~~~ENDSECTION~~~

!SLIDE supplemental exercises
# Lab ~~~SECTION:MAJOR~~~.~~~SECTION:MINOR~~~: Use Git Diff

## Objective: Play with Git Diff
****

* Play with `git diff`

## Steps:

* Edit README.md
* Use `git diff` to compare unstaged changes
* Add the changed file to the staging area
* Use `git diff` again
* Compare the staging area with the latest commit in `.git repository`


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

