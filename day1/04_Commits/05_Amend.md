!SLIDE smbullets
# Amend changes to commits

* Change the commit message, e.g. typos or missing details
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
 * Add two new files: `check_amend` and `README.md`
 * Add `check_amend` to the staging index and commit the change
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

* Add two new files: `check_amend` and `README.md`
* Add `check_amend` to the staging index and commit the change
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
    $ echo "amend training" > check_amend
    $ echo "A check plugin" > README.md

### Add check_amend to the staging index

    @@@ Sh
    $ git add check_amend

### Commit the change with check_amend

    @@@ Sh
    $ git commit -v check_amend -m "first import"

### Add README.md to the staging index

    @@@ Sh
    $ git add README.md
    $ git status

### Amend README.md to the previous commit

    @@@ Sh
    $ git commit --amend -v README.md

    first import including README.md

Adopt the commit message as additional exercise
