!SLIDE smbullets
# Amend changes to commits

* Change the commit message, e.g. typos or missing changes broke the build
* Amend changes from staging
* Helps if new files were added but not committed
* `git commit --amend` changes the latest commit
 * Amending commits in Git history is possible, explained later with `git rebase`.

If you amend changes to a specific commit, a new unique commit id is generated.
This changes the Git history and we will learn later how to resolve possible
problems in collaboration with others.

~~~SECTION:handouts~~~

****

~~~ENDSECTION~~~


!SLIDE smbullets
# Lab ~~~SECTION:MAJOR~~~.~~~SECTION:MINOR~~~: Amend changes to commits

* Objective:
 * Use git amend
* Steps:
 * Change into `$HOME/training`
 * Modify `README.md` and add docs about amend
 * Add `README.md` to the staging index and commit the change
 * Edit `README.md` again and add it to staging
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

* Change into `$HOME/training`
* Modify `README.md` and add docs about amend
* Add `README.md` to the staging index and commit the change
* Edit `README.md` again and add it to staging
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
    $ cd $HOME/training

    $ vim README.md

    `git commit --amend` adds missing changes to the previous commit.

### Add README.md to the staging index and commit the change

    @@@ Sh
    $ git add README.md
    $ git status
    $ git commit -v README.md -m "Add documentation for Amend"

### Add a note to README.md again

    @@@ Sh
    $ vim README.md

    `git commit --amend` adds missing changes to the previous commit.
    I'm also able to edit the commit message.

    $ git add README.md
    $ git status

### Amend README.md to the previous commit

    @@@ Sh
    $ git commit --amend -v README.md
      Add documentation for 'git amend'

Adopt the commit message as additional exercise above.

    @@@ Sh
    $ git status
    $ git show
