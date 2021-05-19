!SLIDE smbullets
# Examine the Git history

* `git log`
  * Show commit history of the current branch.
  * Supports `-10` notation to show a limited number of commits.

* `git blame <filename>`
  * Show authors of a certain file line-by-line
  * Supports `--color-lines` notation for grouping lines of the same commit.

~~~SECTION:handouts~~~

****

`git log` shows the commit history of the current branch.
`git blame <filename>`shows the author line-by-line of the selected file.


~~~ENDSECTION~~~

!SLIDE smbullets
# Examine the Git history

* `git show`
  * Print commit details.
  * If the commit id is omitted, the last commit is printed.
  * Supports `-10` notation to show a limited number of commits.
* `git diff`
  * Show changes between working tree and last commit.
  * Supports source and target parameters.
  * Can be used to compare 2 commit ids, branches, etc.

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
 * Use `git blame .gitignore` to see the authors for the file

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

* Change into `$HOME/training`
* Add and commit remaining changes e.g. `.gitignore`
* Use `git log` to print the current history
* Use `git show` to show specific commits (defaults to the latest)
* Use `git diff` to compare changes between specific revisions
* Use `git blame .gitignore` to see the authors for the file

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

!SLIDE smbullets noprint
# Advanced history with tig

* `tig` helps visualize history and branches
* Inspect specific commits while scrolling

<center><img src="../../_images/commits/git_history_tig.png"  style="width: 800px;" alt="Tig"/></center>

!SLIDE smbullets printonly
# Advanced history with tig

* `tig` helps visualize history and branches
* Inspect specific commits while scrolling

<center><img src="../../_images/commits/git_history_tig.png"  style="width: 450px;" alt="Tig"/></center>

~~~SECTION:handouts~~~

****

~~~ENDSECTION~~~

!SLIDE smbullets
# Lab ~~~SECTION:MAJOR~~~.~~~SECTION:MINOR~~~: Learn more about tig

* Objective:
 * Install and use tig
* Steps:
 * Install the `tig` package
 * Run tig in `$HOME/training`
 * Clone a different repository and run tig there e.g. `$HOME/icinga2`
* Next steps:
 * Select a line and press `Enter`
 * `q` quits the detail view and the application

~~~SECTION:handouts~~~

****

~~~ENDSECTION~~~

!SLIDE supplemental exercises
# Lab ~~~SECTION:MAJOR~~~.~~~SECTION:MINOR~~~: Learn more about tig

## Objective: Install and use tig
****

* Learn more about tig

## Steps:

****

* Install the tig package
* Run tig in `$HOME/training`
* Clone a different repository and run tig there e.g. `$HOME/icinga2`

## Next Steps:

****

* Select a line and press `Enter`
* `q` quits the detail view and the application

!SLIDE supplemental solutions
# Lab ~~~SECTION:MAJOR~~~.~~~SECTION:MINOR~~~: Proposed Solution
****

## Learn more about tig

****

### Install tig

CentOS 7 (requires the EPEL repository):

    @@@ Sh
    # yum install epel-release
    # yum makecache
    # yum install tig

Debian/Ubuntu

    @@@ Sh
    # apt-get install tig

### Use tig

    @@@ Sh
    $ cd $HOME/training
    $ tig

    @@@ Sh
    $ cd $HOME/icinga2
    $ tig
