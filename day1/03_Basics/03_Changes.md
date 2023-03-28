!SLIDE smbullets
# Add current changes

* `git add`
  * Adds new files from the working directory to the staging area
  * Adds modified files to the staging area
  * `-A` adds all files. Question: Where is this applicable?
* `git mv`
  * Renames files tracked by Git

~~~SECTION:handouts~~~

****

`git add` will add the file(s) and their content to the staging area
waiting for the commit. This applies to both, new files and also modified
files.

If you're using `-A` to add all files, you need to ensure that
unwanted files are not added. Learn more about `git rm --cached` in the next
slide to selectively unstage added changes.

`git mv` renames an existing file tracking the change for the commit. If you
manually move the file, you will need to rm and add it again.

~~~ENDSECTION~~~

!SLIDE smbullets
# Lab ~~~SECTION:MAJOR~~~.~~~SECTION:MINOR~~~: Add a new README.md file

* Objective:
 * Add a new README.md file
* Steps:
 * Change into `$HOME/training`
 * Create README.md and add `# GitLab Training Notes` as first line
 * Use `git add` to add README.md to the staging area
* Next steps:
 * Verify the change with `git status`

Hint: Markdown is a markup language that is rendered by GitLab as HTML.

You can keep notes from the training in the `README.md` file.

!SLIDE supplemental exercises
# Lab ~~~SECTION:MAJOR~~~.~~~SECTION:MINOR~~~: Add a new README.md file

## Objective: Add a new README.md file to the current change area
****

* Add a new README.md file

## Steps:

****

* Change into `$HOME/training`
* Create README.md and add `# GitLab Training Notes` as first line
* Use `git add` to add the file to the current staging area
* Verify the change with `git status`


!SLIDE supplemental solutions
# Lab ~~~SECTION:MAJOR~~~.~~~SECTION:MINOR~~~: Proposed Solution
****

## Add a new README.md file

****

### Example

    @@@ Sh
    $ cd $HOME/training
    $ echo "# GitLab Training Notes" > README.md
    $ git add README.md
    $ git status

~~~ENDSECTION~~~

!SLIDE smbullets
# Remove changes

* `git rm --cached`
  * Removes files from to the staging area
  * Hint: This comes in handy with `git add -A` before
* `git rm`
  * Removes the files from working tree and Git repository
  * Note: files will be visible in the Git history, and can be restored from it

~~~SECTION:handouts~~~

****

`git rm --cached` resets files added to the staging area. You can also use it to
reset commits from the history.

This also is helpful when you need to add 95 out of 100 changes. First, use `git add -A`
and then selectively unstage the unwanted 5 changes.

`git rm` removes the file from the working tree and also from the staging area.

~~~ENDSECTION~~~

!SLIDE smbullets
# Lab ~~~SECTION:MAJOR~~~.~~~SECTION:MINOR~~~: Reset File from Staging Area

* Objective:
 * Remove a file from staging area
* Steps:
 * Change into `$HOME/training`
 * Remove the previously added README.md file from the staging area with `git rm --cached README.md`
 * Verify it with `git status` and explain what happened
 * Re-add the README.md and examine again with `git status`

!SLIDE supplemental exercises
# Lab ~~~SECTION:MAJOR~~~.~~~SECTION:MINOR~~~: Reset File from Staging Area

## Objective: Reset File from Staging Area
****

* Remove a file from staging area

## Steps:

****

* Change into `$HOME/training`
* Remove the previously added `README.md` file from the staging area with `git rm --cached README.md`
* Verify it with `git status` and explain what happened
* Re-add the `README.md` and examine again with `git status`

!SLIDE supplemental solutions
# Lab ~~~SECTION:MAJOR~~~.~~~SECTION:MINOR~~~: Proposed Solution
****

## Remove file from staging area.

****

### Example

    @@@ Sh
    $ cd $HOME/training

    $ git status

    $ git rm --cached README.md

    $ git status

    $ git add README.md

    $ git status
