!SLIDE smbullets
# Work on Git History

* `git commit`
 * Selected changes from the staging index
 * All changes (`-a`) not necessarily added to the staging index
* Verbose mode shows changes compared to latest commit (`-v`)
* Uses the configured editor (vim, nano, etc.)
 * `-m` allows for a short commit message without editor view

Commits use the `user.name` and `user.email` settings to qualify
you as the author of this change. In addition to that the date
and time is stored.

~~~SECTION:handouts~~~

****

`git commit` collects and records all changes stages for commit. It uses the configured
user name and email address as commit author. This command opens the configured editor
requiring you to add a commit message.

~~~ENDSECTION~~~


!SLIDE smbullets
# Lab ~~~SECTION:MAJOR~~~.~~~SECTION:MINOR~~~: Commit Changes

* Objective:
 * Modify files and commit your changes
* Steps:
 * Change into `$HOME/training`
 * Modify the `README.md` file and add more docs
 * Add the change to the changing index
 * Commit the change to your Git history with `git commit -v README.md`
* Next steps:
 * Use `git log` to verify the history

~~~SECTION:handouts~~~

****

~~~ENDSECTION~~~

!SLIDE supplemental exercises
# Lab ~~~SECTION:MAJOR~~~.~~~SECTION:MINOR~~~: Commit Changes

## Objective: Commit Changes
****

* Modify files and commit your changes

## Steps:

****

* Change into `$HOME/training`
* Modify the `README.md` file and add more docs
* Add the change to the staging index
* Commit the change to your Git history with `git commit -v README.md`

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
    $ cd $HOME/training

    $ vim README.md

    `git commit` also has `-a` which should be used with care.

    $ git add README.md

### Commit the changed file

    @@@ Sh
    $ git status
    $ git commit -v README.md
      Update training notes

      My first commit :)


    Save and exit.

### Verify the Git history

    @@@ Sh
    $ git log


