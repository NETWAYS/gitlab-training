!SLIDE smbullets
# Work on Git History

* `git commit`
 * Specific changes added to the changing index
 * All changes (`-a`)
* Verbose mode shows changes compared to latest commit (`-v`)
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


