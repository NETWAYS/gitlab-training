!SLIDE smbullets
# Advanced commands

* `git cherry-pick`: collect commit into your working tree
* `git archive`: create tarball
* `git stash`: put current changes on a temporary stack

~~~SECTION:handouts~~~

****

`git cherry-pick` collects a specific commit into your working tree.

`git archive` creates a tarball from the given working tree (HEAD or tag).

`git stash` allows you put your current changes on a temporary stack (`stash`).
This comes in handy when you want to change branches with a different history
where your uncommitted changes will not apply.
Use `git stash pop` to fetch the changes again. You can stash multiple uncommitted
stages, `git stash list` will list them.

~~~ENDSECTION~~~


!SLIDE smbullets
# Lab ~~~SECTION:MAJOR~~~.~~~SECTION:MINOR~~~: Learn more about git stash

* Objective:
 * Learn more about git stash
* Steps:
 * Make changes
 * Examine the status with git status
 * Stash your current changes to the working directory
 * Run git status again
 * Examine the stash list
 * Fetch the previously stashed changes with stash pop

~~~SECTION:handouts~~~

****

~~~ENDSECTION~~~

!SLIDE supplemental exercises
# Lab ~~~SECTION:MAJOR~~~.~~~SECTION:MINOR~~~: Learn more about git stash

## Objective: Learn more about git stash
****

* Learn more about git stash

## Steps:

* Make changes
* Examine the status with git status
* Stash your current changes to the working directory
* Run git status again
* Examine the stash list
* Fetch the previously stashed changes with stash pop

!SLIDE supplemental solutions
# Lab ~~~SECTION:MAJOR~~~.~~~SECTION:MINOR~~~: Proposed Solution
****

## Learn more about git stash

****

### Make changes

    @@@ Sh
    $ echo "my fix" > check_git.py
    $ git add check_git.py

### Examine the state with git status

    @@@ Sh
    $ git status
    On branch master
    Changes to be committed:
      (use "git reset HEAD <file>..." to unstage)
    
           	new file:   check_git.py

### Stash changes

    @@@ Sh
    $ git stash
    Saved working directory and index state WIP on master: 31dcde5 Fixed plugin
    HEAD is now at 31dcde5 Fixed plugin

### Examine the state with git status

    @@@ Sh
    $ git status
    On branch master
    nothing to commit, working tree clean

### Examine the stash list

    @@@ Sh
    $ git stash list
    stash@{0}: WIP on master: 31dcde5 Fixed plugin

### Fetch previously stashed changes

    @@@ Sh
    $ git stash pop
    On branch master
    Changes to be committed:
      (use "git reset HEAD <file>..." to unstage)
    
           	new file:   check_git.py
    
    Dropped refs/stash@{0} (a9f28340e6d536a9179307bd26169368e450161f)
    


