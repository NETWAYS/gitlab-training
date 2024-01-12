!SLIDE smbullets
# Examine the Git history

* `git log`
  * Shows the commit history of the current branch
  * Supports `-10` notation to show a limited number of commits
  * `--oneline` can be used for less output

* `git blame <filename>`
  * Shows the authors of a file line-by-line
  * Supports `--color-lines` notation for grouping lines of the same commit

~~~SECTION:handouts~~~

****

`git log` shows the commit history of the current branch.

`git blame <filename>` shows the author line-by-line of the selected file.

~~~ENDSECTION~~~

!SLIDE smbullets
# Examine the Git history

* `git show`
  * Prints details of the latest commit
  * Commit IDs can be used to show a specific commit
  * Supports `-10` notation to show a limited number of commits
* `git diff`
  * Show changes between working tree and last commit
  * Supports source and target parameters
  * Can be used to compare commits, branches, etc.

~~~SECTION:handouts~~~

****

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
 * Change into `$HOME/training`
 * Add and commit remaining changes e.g. `.gitignore`
 * Use `git log` to print the current history
 * Use `git show` to show specific commits (defaults to the latest)
 * Use `git diff` to compare changes between specific revisions
 * Use `git blame .gitignore` to see the file's authors

Bonus: Try `git log` with the `--graph` and `--oneline` option.

!SLIDE supplemental exercises
# Lab ~~~SECTION:MAJOR~~~.~~~SECTION:MINOR~~~: Examine the Commit History

## Objective: Examine the Commit History
****

* Examine the commit history

## Steps:

****

* Change into `$HOME/training`
* Add and commit remaining changes e.g. `.gitignore`
* Use `git log` to print the current history
* Use `git show` to show specific commits (defaults to the latest)
* Use `git diff` to compare changes between specific revisions
* Use `git blame .gitignore` to see the authors for the file

Bonus: Try `git log` with the `--graph` and `--oneline` option.

!SLIDE supplemental solutions
# Lab ~~~SECTION:MAJOR~~~.~~~SECTION:MINOR~~~: Proposed Solution
****

## Examine the Commit History

****

### Add and commit remaining changes

    @@@ Sh
    $ cd $HOME/training

    $ git status
    $ git add .gitignore
    $ git commit -v .gitignore -m "Add .gitignore file"

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

### Use git blame

    @@@ Sh
    $ git blame .gitignore
