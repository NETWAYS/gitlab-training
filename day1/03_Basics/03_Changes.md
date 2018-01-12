!SLIDE smbullets
# Work on current changes

* `git add`
  * Add file(s) to current change index.
* `git mv`
  * Rename file(s) tracked by Git.
* `git reset`
  * Reset the current HEAD, discard changes.
* `git rm`
  * Remove the file(s) from working tree and git index.

~~~SECTION:handouts~~~

****

`git add` will add the file(s) and their content to the current change index
waiting for the commit.

`git mv` renames an existing file tracking the change for the commit. If you
manually move the file, you will need to rm and add it again.

`git reset` resets the current HEAD to the specified state.

`git rm` removes the file from the working tree and also from the git index.

~~~ENDSECTION~~~
!SLIDE smbullets small
# Lab ~~~SECTION:MAJOR~~~.~~~SECTION:MINOR~~~: Add a new README.md file

* Objective:
 * Add a new README.md file
* Steps:
 * Create README.md and add `# Git Training Notes` as first line
 * Use `git add` to add README.md to the current change index
* Next steps:
 * Verify the change with `git status`

Best practice is to have a README.md file written in Markdown
in every project. This gets rendered by GitHub/GitLab in readable HTML.

> During this training we will learn many new things. Keep notes
> in the README.md file.

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
    $ echo "# Git Training Notes" > README.md
    $ git add README.md
    $ git status

~~~ENDSECTION~~~
!SLIDE smbullets
# Lab ~~~SECTION:MAJOR~~~.~~~SECTION:MINOR~~~: Move a file

* Objective:
 * Move a file with git
* Steps:
 * Use `touch authors` and add the file to the staging index
 * Verify it with `git status`
 * Use `git mv` to move `authors` into `AUTHORS`
* Next steps:
 * Verify the change with `git status`

~~~SECTION:handouts~~~

****

~~~ENDSECTION~~~

!SLIDE supplemental exercises
# Lab ~~~SECTION:MAJOR~~~.~~~SECTION:MINOR~~~: Move a file

## Objective: Move a file with git
****

* Move a file with git

## Steps:

****

* Use `touch authors` and add the file to the staging index
* Verify it with `git status`
* Use `git mv` to move `authors` into `AUTHORS`
* Verify the change with `git status`


!SLIDE supplemental solutions
# Lab ~~~SECTION:MAJOR~~~.~~~SECTION:MINOR~~~: Proposed Solution
****

## Move a file

****

### Example

    @@@ Sh
    $ touch authors
    $ git add authors
    $ git status
    $ git mv authors AUTHORS
    $ git status

