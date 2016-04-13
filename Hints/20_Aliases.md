!SLIDE smbullets
# Git Aliases

* Shortcuts
* Custom commands
* "Simulate" SVN commands

~~~SECTION:handouts~~~

****


~~~ENDSECTION~~~


!SLIDE smbullets
# Lab ~~~SECTION:MAJOR~~~.~~~SECTION:MINOR~~~: Add an alias for git diff

* Objective:
 * Add an alias for git diff
* Steps:
 * Edit the `$HOME/.gitconfig` file
 * Add a new `[alias]` section if not existing
 * Add `d` as an alias for `diff`

!SLIDE supplemental exercises
# Lab ~~~SECTION:MAJOR~~~.~~~SECTION:MINOR~~~: Add an alias for git diff

## Objective: Add an alias for git diff
****

* Add an alias for the `git diff` command

## Steps:

****

* Edit the `$HOME/.gitconfig` file
* Add a new `[alias]` section if not existing
* Add `d` as an alias for `diff`


!SLIDE supplemental solutions
# Lab ~~~SECTION:MAJOR~~~.~~~SECTION:MINOR~~~: Proposed Solution
****

## Add an alias for git diff

****

### Edit the git configuration file

    @@@ Sh
    $ vim $HOME/.gitconfig

    [alias]
        d = diff

### Make a change and test it

    @@@ Sh
    $ vim AUTHORS
    :dd

    $ git d

