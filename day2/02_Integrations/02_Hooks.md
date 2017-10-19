!SLIDE smbullets
# Git Hooks

* Client or server-side scripts
* Conditional execution (update, post-receive, etc.)
* Integration with external tools
* Web hooks available in GitLab, GitHub, etc.

~~~SECTION:handouts~~~

****


~~~ENDSECTION~~~


!SLIDE smbullets
# Client Hooks

* pre-commit
* pre-rebase
* post-checkout
* post-merge
* Useful to
 * Preserve file modes
 * Check code style/syntax

~~~SECTION:handouts~~~

****


~~~ENDSECTION~~~


!SLIDE smbullets
# Server-side Hooks

* pre-receive
 * Deny non-fast-forward pushes
* post-receive
 * After everything is updated
 * Notify external tools (Mail, IRC, Jenkins, etc.)
* update
 * Check branch permissions


~~~SECTION:handouts~~~

****

Server-side hooks receive the arguments through STDIN in the following
format:

    oldref newref refname

Example:

    aa453216d1b3e49e7f6f98441fa56946ddcd6a20 68f7abf4e6f922807889f52bc043ecd31b79f814 refs/heads/master

~~~ENDSECTION~~~


!SLIDE smbullets
# Lab ~~~SECTION:MAJOR~~~.~~~SECTION:MINOR~~~: Add post-receive Git Hook

* Objective:
 * Add post-receive git hook
* Steps:
 * Become root and navigate into `/opt/git/training.git/hooks`
 * Add new file `post-receive`
 * Read from STDIN
 * Calculate the commit count between old and new reference
 * Print refname, oldref, newref and the commit count
 * Make the script executable
* Next steps:
 * Add, commit and push a change in your repository

!SLIDE supplemental exercises
# Lab ~~~SECTION:MAJOR~~~.~~~SECTION:MINOR~~~: Add post-receive Git Hook

## Objective: Add post-receive Git Hook
****

* Add and test post-receive Git Hook

## Steps:

****

* Become root and navigate into `/opt/git/training.git/hooks`
* Add new file `post-receive`
* Read from STDIN
* Calculate the commit count between old and new reference
* Print refname, oldref, newref and the commit count
* Make the script executable

## Next Steps:

****

* Add, commit and push a change in your repository


!SLIDE supplemental solutions
# Lab ~~~SECTION:MAJOR~~~.~~~SECTION:MINOR~~~: Proposed Solution
****

## Add post-receive Git Hook

****

### Become root and chdir to the training repository hooks directory

    @@@ Sh
    $ sudo -i
    $ cd /opt/git/training.git/hooks

### Add post-receive file

    @@@ Sh
    $ vim post-receive

    #!/bin/bash
    # oldref newref refname
    read line
    set -- $line

    # print the commits between oldref and newref and count the lines
    num=$(git log --pretty=oneline ${1}..${2}| wc -l)

    echo "New ref name '${3}' created. Pushed ${num} commits. Old ref '${1}' to new ref '${2}'."
    exit 0


### Make post-receive executable

    @@@ Sh
    $ chmod +x post-receive

### Change to your user and add, commit, push changes

    @@@ Sh
    $ whoami
    $ cd $HOME/training.git
    $ echo "1" > hooktest
    $ git add hooktest
    $ git commit -av -m "1. hooktest"
    $ echo "2" >> hooktest
    $ git commit -av -m "2. hooktest"

    $ git log
    $ git push
    ...
    remote: New ref name 'refs/heads/master' created. Pushed 2 commits. Old ref ... to new ref ... .
