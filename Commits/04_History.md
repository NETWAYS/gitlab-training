!SLIDE smbullets
# Examine the Git history

* `git log`: Show commit history of the current branch.
* `git show`: Print commit details. If the commit id is ommitted, the last commit is printed.
* `git diff`: Show changes between working tree and last commit.

~~~SECTION:handouts~~~

****

`git log` shows the commit history of the current branch.

`git show` will print the last commit details. If you want to print a specific commit id, add
it afterwards.

`git diff` shows changes between the current working tree and the last commit. You can
also compare specific commits.

~~~ENDSECTION~~~


!SLIDE smbullets
# Lab ~~~SECTION:MAJOR~~~.~~~SECTION:MINOR~~~: Examine the Commit History

* Objective:
 * Examine the commit history
* Steps:
 * Use `git log` to print the current history
 * Use `git show` to show specific commits (defaults to the latest)
 * Use `git diff` to compare changes between specific revisions

~~~SECTION:handouts~~~

****

~~~ENDSECTION~~~

!SLIDE supplemental exercises
# Lab ~~~SECTION:MAJOR~~~.~~~SECTION:MINOR~~~: Examine the Commit History

## Objective: Examine the Commit History
****

* Examine the commit history

## Steps:

****

* Use `git log` to print the current history
* Use `git show` to show specific commits (defaults to the latest)
* Use `git diff` to compare changes between specific revisions

!SLIDE supplemental solutions
# Lab ~~~SECTION:MAJOR~~~.~~~SECTION:MINOR~~~: Proposed Solution
****

## Examine the Commit History

****

### Use git log

    @@@ Sh
    $ git log

### Use git show

    @@@ Sh
    $ git show
    $ git show <commitid>
    $ git show -2

### Use git diff

    @@@ Sh
    $ git diff
    $ git diff <commitid1> <commitid2>


