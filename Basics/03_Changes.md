!SLIDE smbullets
# Work on current changes

* git add
* git mv
* git reset
* git rm

~~~SECTION:handouts~~~

****

`git add` will add the file(s) and their content to the current change index
waiting for the commit.

`git mv` renames an existing file tracking the change for the commit. If you
manually move the file, you will need to rm and add it again.

`git reset` resets the current HEAD to the specified state.

`git rm` removes the file from the working tree and also from the git index.

~~~ENDSECTION~~~
!SLIDE smbullets
# Lab ~~~SECTION:MAJOR~~~.~~~SECTION:MINOR~~~: Add a new file

* Objective:
 * Add a new file
* Steps:
 * Create a new file
 * Use `git add` to add the file to the current change index
* Next steps:
 * Verify the change with `git status`

~~~SECTION:handouts~~~

****

~~~ENDSECTION~~~

!SLIDE supplemental exercises
# Lab ~~~SECTION:MAJOR~~~.~~~SECTION:MINOR~~~: Add a new file

## Objective: Add a new file to the current change index
****

* Add a new file

## Steps:

****

* Create a new file
* Use `git add` to add the file to the current change index
* Verify the change with `git status`


!SLIDE supplemental solutions
# Lab ~~~SECTION:MAJOR~~~.~~~SECTION:MINOR~~~: Proposed Solution
****

## Add a new file

****

### Example

    @@@ Sh
    $ cat "my first file" > myfile
    $ git add myfile
    $ git status

~~~ENDSECTION~~~
!SLIDE smbullets
# Lab ~~~SECTION:MAJOR~~~.~~~SECTION:MINOR~~~: Move a file

* Objective:
 * Move a file with git
* Steps:
 * Use `git mv` to move the file to a new location
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

 * Use `git mv` to move the file to a new location
* Verify the change with `git status`


!SLIDE supplemental solutions
# Lab ~~~SECTION:MAJOR~~~.~~~SECTION:MINOR~~~: Proposed Solution
****

## Move a file

****

### Example

    @@@ Sh
    $ ls myfile
    $ git mv myfile mymovedfile
    $ git status

