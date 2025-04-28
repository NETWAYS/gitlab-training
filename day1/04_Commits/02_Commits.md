!SLIDE smbullets
# Work on Git History

* `git commit`
 * Takes all files from the staging area
 * Alternatively `-a` or `--interactive` are possible
 * Verbose mode `-v` shows changes compared to latest commit
* Uses the editor configured in `.gitconfig`  (vim, nano, etc.)
 * `-m` allows for a short commit message without the editor

Commits use the `user.name` and `user.email` settings to set the commit's author.

Additionally, the date, time, and the checksum of the previous commit are stored.

~~~SECTION:handouts~~~

****

`git commit` collects and records all changes stages for commit. It uses the configured
user name and email address as commit author. This command opens the configured editor
requiring you to add a commit message.

You can also create empty commits. This is sometimes done with the initial commit in a repository:

    @@@Sh
    git commit --allow-empty -m "Initial commit"

~~~ENDSECTION~~~

!SLIDE smbullets
# Lab ~~~SECTION:MAJOR~~~.~~~SECTION:MINOR~~~: Commit Changes

* Objective:
 * Modify files and commit your changes
* Steps:
 * Change into `$HOME/training`
 * Modify the README.md file and add more docs
 * Add the README.md to the staging area
 * Commit the change to your Git history with `git commit -v`
* Next steps:
 * Use `git log` to verify the commit

!SLIDE supplemental exercises
# Lab ~~~SECTION:MAJOR~~~.~~~SECTION:MINOR~~~: Commit Changes

## Objective: Commit Changes
****

* Modify files and commit your changes

## Steps:

****

* Change into `$HOME/training`
* Modify the README.md file and add more text
* Add the README.md to the staging area
* Commit the change to your Git history with `git commit -v`

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
