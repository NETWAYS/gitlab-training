!SLIDE smbullets
# Examine the current state

* git status
* git log
* git show
* git diff

~~~SECTION:handouts~~~

****

`git status` shows the current working tree status. Untracked files and changes (not) staged
for commit.

`git log` shows the commit history of the current branch.

`git show` will print the last commit details. If you want to print a specific commit id, add
it afterwards.

`git diff` shows changes between the current working tree and the last commit. You can
also compare specific commits.

~~~ENDSECTION~~~


!SLIDE smbullets
# Lab ~~~SECTION:MAJOR~~~.~~~SECTION:MINOR~~~: Examine current changes

* Objective:
 * Examine current changes
* Steps:
 * Change files
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

* Change files
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
    $ cat "my change" > change01
    $ git add change01
    $ vim change01

Modify and save the file.

### Use git status

    @@@ Sh
    $ git status

You'll recognize the unstaged changes compared to your staging area.

### Add the change to the staging area

    @@@ Sh
    $ git add change01

### Use git status again

    @@@ Sh
    $ git status



!SLIDE smbullets
# Lab ~~~SECTION:MAJOR~~~.~~~SECTION:MINOR~~~: Use Git Diff

* Objective:
 * Play with Git Diff
* Steps:
 * Change files
 * Use `git diff` to compare unstaged changes
 * Add the changed files to the staging area
 * Use `git diff` again
 * Compare the staging area with the git directory (HEAD)

~~~SECTION:handouts~~~

****

~~~ENDSECTION~~~

!SLIDE supplemental exercises
# Lab ~~~SECTION:MAJOR~~~.~~~SECTION:MINOR~~~: Use Git Diff

## Objective: Play with Git Diff
****

* Play with Git Diff

## Steps:

* Change files
* Use `git diff` to compare unstaged changes
* Add the changed files to the staging area
* Use `git diff` again
* Compare the staging area with the git directory (HEAD)


!SLIDE supplemental solutions
# Lab ~~~SECTION:MAJOR~~~.~~~SECTION:MINOR~~~: Proposed Solution
****

## Play with Git Diff

****

### Change files

    @@@ Sh
    $ cat "my change" > diff01
    $ git add diff01
    $ vim diff01

Modify and save the file.

### Use git diff

    @@@ Sh
    $ git diff

You'll recognize the unstaged changes compared to your staging area.

### Add the change to the staging area

    @@@ Sh
    $ git add diff01

### Use git diff again

    @@@ Sh
    $ git diff

