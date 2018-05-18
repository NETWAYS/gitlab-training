!SLIDE smbullets
# Add current changes

* `git add`
  * Add (modified) file(s) from the working directory into the staging index.
* `git mv`
  * Rename file(s) tracked by Git.

~~~SECTION:handouts~~~

****

`git add` will add the file(s) and their content to the staging index
waiting for the commit.

`git mv` renames an existing file tracking the change for the commit. If you
manually move the file, you will need to rm and add it again.

~~~ENDSECTION~~~


!SLIDE smbullets
# Remove changes

* `git reset`
  * Reset files added to the staging index.
  * `--soft` keeps the changes (default), `--hard` removes them indefinitely.
* `git rm`
  * Remove the file(s) from working tree and Git repository.
  * Note that file(s) will be visible in Git history, and can be restored from it.

~~~SECTION:handouts~~~

****

`git reset` resets files added to the staging index.

`git rm` removes the file from the working tree and also from the git index.

~~~ENDSECTION~~~


!SLIDE smbullets small
# Lab ~~~SECTION:MAJOR~~~.~~~SECTION:MINOR~~~: Add a new README.md file

* Objective:
 * Add a new README.md file
* Steps:
 * Change into `$HOME/training`
 * Create README.md and add `# Git Training Notes` as first line
 * Use `git add` to add README.md to the current change index
* Next steps:
 * Verify the change with `git status`

Best practice is to have a README.md file written in Markdown
in every project. This gets rendered by GitHub/GitLab in readable HTML.

During this training we will learn many new things. Keep notes
in the `README.md` file.

~~~SECTION:handouts~~~

****

~~~ENDSECTION~~~

!SLIDE supplemental exercises
# Lab ~~~SECTION:MAJOR~~~.~~~SECTION:MINOR~~~: Add a new README.md file

## Objective: Add a new README.md file to the current change index
****

* Add a new README.md file

## Steps:

****

* Change into `$HOME/training`
* Create a new README.md file
* Use `git add` to add the file to the current change index
* Verify the change with `git status`


!SLIDE supplemental solutions
# Lab ~~~SECTION:MAJOR~~~.~~~SECTION:MINOR~~~: Proposed Solution
****

## Add a new README.md file

****

### Example

    @@@ Sh
    $ cd $HOME/training
    $ echo "# Git Training Notes" > README.md
    $ git add README.md
    $ git status

~~~ENDSECTION~~~
!SLIDE smbullets
# Lab ~~~SECTION:MAJOR~~~.~~~SECTION:MINOR~~~: Reset File from Staging Index

* Objective:
 * Reset file from staging index
* Steps:
 * Change into `$HOME/training`
 * Remove the previously added `README.md` file from the staging index with `git reset --soft README.md`
 * Verify it with `git status` and explain what happened.
 * Re-add the `README.md` and examine again with `git status`.

~~~SECTION:handouts~~~

****

~~~ENDSECTION~~~

!SLIDE supplemental exercises
# Lab ~~~SECTION:MAJOR~~~.~~~SECTION:MINOR~~~: Reset File from Staging Index

## Objective: Reset File from Staging Index
****

* Reset file from staging index


## Steps:

****

* Change into `$HOME/training`
* Remove the previously added `README.md` file from the staging index with `git reset --soft README.md`
* Verify it with `git status` and explain what happened.
* Re-add the `README.md` and examine again with `git status`.

!SLIDE supplemental solutions
# Lab ~~~SECTION:MAJOR~~~.~~~SECTION:MINOR~~~: Proposed Solution
****

## Remove file from staging index.

****

### Example

    @@@ Sh
    $ cd $HOME/training

    $ git status

    $ git reset --soft README.md

    $ git status

    $ git add README.md

    $ git status

