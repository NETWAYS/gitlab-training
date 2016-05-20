!SLIDE smbullets
# Work on Git History

* `git commit`
 * Specific changes added to the changing index
 * All changes (`-a`)
* Verbose mode shows changes compared to HEAD (`-v`)
* Uses the configured editor (vim, nano, etc.)

~~~SECTION:handouts~~~

****

`git commit` collects and records all changes stages for commit. It uses the configured
user name and email address as commit author. This command opens the configured editor
requiring you to add a commit message.

~~~ENDSECTION~~~


!SLIDE smbullets
# Lab ~~~SECTION:MAJOR~~~.~~~SECTION:MINOR~~~: Commit Changes

* Objective:
 * Add/modify files and commit your changes
* Steps:
 * Add/modify file
 * Add the change to the changing index
 * Commit the change to your Git history
* Next steps:
 * Use `git log` to verify the history

~~~SECTION:handouts~~~

****

~~~ENDSECTION~~~

!SLIDE supplemental exercises
# Lab ~~~SECTION:MAJOR~~~.~~~SECTION:MINOR~~~: Commit Changes

## Objective: Commit Changes
****

* Add/modify files and commit your changes

## Steps:

****

* Add/modify file
* Add the change to the changing index
* Commit the change to your Git history

## Next steps:

****

* Use `git log` to verify the history


!SLIDE supplemental solutions
# Lab ~~~SECTION:MAJOR~~~.~~~SECTION:MINOR~~~: Proposed Solution
****

## Commit Changes

****

### Add/modify file

    @@@ Sh
    $ echo "my first commit" > README
    $ git add README

### Commit the changed file

    @@@ Sh
    $ git status
    $ git commit -v README
    Add my first file
    
    Cool :)

    Save and exit.

### Verify the Git history

    @@@ Sh
    $ git log


!SLIDE smbullets
# Lab ~~~SECTION:MAJOR~~~.~~~SECTION:MINOR~~~: 

* Objective:
 * 
* Steps:
 * 

~~~SECTION:handouts~~~

****

~~~ENDSECTION~~~

!SLIDE supplemental exercises
# Lab ~~~SECTION:MAJOR~~~.~~~SECTION:MINOR~~~: 

## Objective: 
****

*

## Steps:

****

*


!SLIDE supplemental solutions
# Lab ~~~SECTION:MAJOR~~~.~~~SECTION:MINOR~~~: Proposed Solution
****

## 

****

### Example for Debian/Ubuntu

    @@@ Sh
    $ apt-get install git


!SLIDE smbullets
# Lab ~~~SECTION:MAJOR~~~.~~~SECTION:MINOR~~~: 

* Objective:
 * 
* Steps:
 * 

~~~SECTION:handouts~~~

****

~~~ENDSECTION~~~

!SLIDE supplemental exercises
# Lab ~~~SECTION:MAJOR~~~.~~~SECTION:MINOR~~~: 

## Objective: 
****

*

## Steps:

****

*


!SLIDE supplemental solutions
# Lab ~~~SECTION:MAJOR~~~.~~~SECTION:MINOR~~~: Proposed Solution
****

## 

****

### Example for Debian/Ubuntu

    @@@ Sh
    $ apt-get install git


!SLIDE smbullets
# Work on Git History

* git diff
* git merge
* git rebase
* git tag

~~~SECTION:handouts~~~

****

`git diff` shows changes between the current working tree and the last commit. You can
also compare specific commits.

`git merge` allows you to join one or more commit histories together.

`git rebase` imports the commit history from the given head, and adds your local commit
history on top.

`git tag` adds a pointer to the current commit. This is useful to tag release versions, e.g.
`v2.4.5` or any specific milestone. You can also list, delete and verify these tags. If you
want to sign the commit using your GPG key, add `-s`.

Additional exercises for merge and rebase will
be discussed in the Git Workflows chapter.

~~~ENDSECTION~~~


!SLIDE smbullets
# Lab ~~~SECTION:MAJOR~~~.~~~SECTION:MINOR~~~: Use Git Diff

* Objective:
 * Play with Git Diff
* Steps:
 * Change files
 * Use git diff to compare unstaged changes
 * Add the changed files to the staging area
 * Use git diff again
 * Compare the staging area with the git directory (HEAD)

~~~SECTION:handouts~~~

****

~~~ENDSECTION~~~

!SLIDE supplemental exercises
# Lab ~~~SECTION:MAJOR~~~.~~~SECTION:MINOR~~~: Use Git Diff

## Objective: Play with Git Diff
****

* Play with Git Diff

## Steps:

* Change files
* Use git diff to compare unstaged changes
* Add the changed files to the staging area
* Use git diff again
* Compare the staging area with the git directory (HEAD)

****

*


!SLIDE supplemental solutions
# Lab ~~~SECTION:MAJOR~~~.~~~SECTION:MINOR~~~: Proposed Solution
****

## Play with Git Diff

****

### Change files

    @@@ Sh
    $ cat "my change" > diff01
    $ git add diff01
    $ vim diff01

Modify and save the file.

### Use git diff

    @@@ Sh
    $ git diff

You'll recognize the unstaged changes compared to your staging area.

### Add the change to the staging area

    @@@ Sh
    $ git add diff01

### Use git diff again

    @@@ Sh
    $ git diff

Now there is no difference between the unstaged changes and your staging area.

### Compare the staging area with the git directory (HEAD)

In case you want to compare the staging area and your working git directory (HEAD),
use the following command:

    @@@ Sh
    $ git diff HEAD
