!SLIDE smbullets
# Amend changes to commits

* Change the commit message, e.g. typos or missing changes broke the build
* Amend changes from staging
* Helps if new files were added but not committed
* `git commit --amend`

~~~SECTION:handouts~~~

****

~~~ENDSECTION~~~


!SLIDE smbullets
# Lab ~~~SECTION:MAJOR~~~.~~~SECTION:MINOR~~~: Amend changes to commits

* Objective:
 * Use git amend
* Steps:
 * Modify README.md
 * Add `README.md` to the staging index
 * Use `git commit --amend README.md` to add the change to the previous commit
* Bonus:
 * Adopt the commit message using `git commit --amend`


~~~SECTION:handouts~~~

****

~~~ENDSECTION~~~

!SLIDE supplemental exercises
# Lab ~~~SECTION:MAJOR~~~.~~~SECTION:MINOR~~~: Amend changes to commits

## Objective: Use git amend
****

* Use git amend

## Steps:

****

* Modify README.md
* Add `README.md` to the staging index
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
    $ vim README.md

    `git commit --amend` adds missing changes to the previous commit.

### Add README.md to the staging index

    @@@ Sh
    $ git add README.md
    $ git status

### Amend README.md to the previous commit

    @@@ Sh
    $ git commit --amend -v README.md
      Update training notes

      My first amended commit :)

Adopt the commit message as additional exercise above.
