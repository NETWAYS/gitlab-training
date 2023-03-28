!SLIDE subsection
# ~~~SECTION:MAJOR~~~ Git Basics

!SLIDE smbullets
# Git Command Overview

* Start a working area (clone, init)
* Work on current changes (add, rm)
* Examine the history and state (status, log)
* Grow, mark and tweak the history (branch, checkout, commit, merge, rebase)
* Collaborate (fetch, pull, push)

~~~SECTION:handouts~~~

****

Example from Git CLI command:

    start a working area (see also: git help tutorial)
       clone      Clone a repository into a new directory
       init       Create an empty Git repository or reinitialize an existing one

    work on the current change (see also: git help everyday)
       add         Add file contents to the index
       mv          Move or rename a file, a directory, or a symlink
       rm --cached Reset current HEAD to the specified state
       rm          Remove files from the working tree and from the index

    examine the history and state (see also: git help revisions)
       bisect     Use binary search to find the commit that introduced a bug
       grep       Print lines matching a pattern
       log        Show commit logs
       show       Show various types of objects
       status     Show the working tree status

    grow, mark and tweak your common history
       branch     List, create, or delete branches
       checkout   Switch branches or restore working tree files
       commit     Record changes to the repository
       diff       Show changes between commits, commit and working tree, etc
       merge      Join two or more development histories together
       rebase     Forward-port local commits to the updated upstream head
       tag        Create, list, delete or verify a tag object signed with GPG

    collaborate (see also: git help workflows)
       fetch      Download objects and refs from another repository
       pull       Fetch from and integrate with another repository or a local branch
       push       Update remote refs along with associated objects

~~~ENDSECTION~~~
