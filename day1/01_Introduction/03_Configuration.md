!SLIDE smbullets
# Git Configuration

The Git command-line can be configured in multiple locations:

* Global for the user
  * `$HOME/.gitconfig`
* Local to the repository
  * `training/.git/config`

Optional configuration can also be included:

    [includeIf "gitdir:/path/to/group/"]
	    path = /path/to/foo.inc

~~~ENDSECTION~~~

!SLIDE smbullets
# Git Configuration Sections

The Git configuration has different sections.

* Commit author [`user`]
* Core functionality (e.g. editor, pager) [`core`]
* Colors [`color`] and Aliases [`alias`]
* And many more...

Example:

    @@@ Sh
    [user]
      email = name.surname@example.com
      name  = Name Surname
    [core]
      editor = nano

~~~SECTION:handouts~~~

****

More information can be found in the documentation at
https://git-scm.com/book/tr/v2/Customizing-Git-Git-Configuration

~~~ENDSECTION~~~

!SLIDE smbullets
# Lab ~~~SECTION:MAJOR~~~.~~~SECTION:MINOR~~~: Configure your username and email address

* Objective:
 * Configure your username and email address using Git CLI commands
* Steps:
 * Use `git config --global user.name "Your Name"`
 * Use `git config --global user.email "name@domain.com"`
* Next steps:
 * Verify the changes with `git config --global --list`


!SLIDE supplemental exercises
# Lab ~~~SECTION:MAJOR~~~.~~~SECTION:MINOR~~~: Configure your username and email address

## Objective: Configure your username and email address
****

* Configure your username and email address using Git CLI commands

## Steps:

****

* Use `git config --global user.name "Your Name"`
* Use `git config --global user.email "name@domain.com"`
* Verify the changes with `git config --global --list`


!SLIDE supplemental solutions
# Lab ~~~SECTION:MAJOR~~~.~~~SECTION:MINOR~~~: Proposed Solution
****

## Configure your username and email address

****

### Set the global username

    @@@ Sh
    $ git config --global user.name "Michael Friedrich"

### Set the global email address

    @@@ Sh
    $ git config --global user.email "michael.friedrich@netways.de"

### Verification

    @@@ Sh
    $ git config --global --list

In addition to that you can open the `.gitconfig` file in your $HOME directory.

    $ less $HOME/.gitconfig

### Notes

You can also use `git config --global --list` to list all configured options.
