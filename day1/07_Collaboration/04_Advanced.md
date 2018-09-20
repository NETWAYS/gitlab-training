!SLIDE smbullets
# Advanced Git Commands

* `git stash`
  * Put current changes on a temporary stack.
* `git cherry-pick`
  * Collect specific commit into your working tree.

~~~SECTION:handouts~~~

****

`git cherry-pick` collects a specific commit into your working tree.

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
 * Change into `$HOME/training`
 * Edit `README.md`
 * Examine the status with git status
 * Stash your current changes to the working directory
 * Run git status again
 * Examine the stash with `git stash list` and `git stash show -p`
 * Fetch the previously stashed changes with `git stash pop`

~~~SECTION:handouts~~~

****

~~~ENDSECTION~~~

!SLIDE supplemental exercises
# Lab ~~~SECTION:MAJOR~~~.~~~SECTION:MINOR~~~: Learn more about git stash

## Objective: Learn more about git stash
****

* Learn more about git stash

## Steps:

* Change into `$HOME/training`
* Edit `README.md`
* Examine the status with git status
* Stash your current changes to the working directory
* Run git status again
* Examine the stash with `git stash list` and `git stash show -p`
* Fetch the previously stashed changes with `git stash pop`

!SLIDE supplemental solutions
# Lab ~~~SECTION:MAJOR~~~.~~~SECTION:MINOR~~~: Proposed Solution
****

## Learn more about git stash

****

### Edit README and add docs

    @@@ Sh
    $ cd $HOME/training
    $ vim README.md

    Now I am learning how to use git stash and temporarily drop the changes
    e.g. to change into another branch.

### Examine the state with git status

    @@@ Sh
    $ git status

### Stash changes

    @@@ Sh
    $ git stash
    Saved working directory and index state WIP on master: 31dcde5 Add docs for git push
    HEAD is now at 31dcde5 Add docs for git push

### Examine the state with git status

    @@@ Sh
    $ git status
    On branch master
    nothing to commit, working tree clean

### Examine the stash list

    @@@ Sh
    $ git stash list
    stash@{0}: WIP on master: 31dcde5 Add docs for git push

    @@@ Sh
    $ git stash show -p

    diff --git a/README.md b/README.md
    index 2081a37..550db95 100644
    --- a/README.md
    +++ b/README.md
    @@ -15,3 +15,7 @@ Now for real.
     ```
     git commit --amend
     ```
    +
    +## Git Stash
    +
    +`git stash`

### Fetch previously stashed changes

    @@@ Sh
    $ git stash pop
    
    Dropped refs/stash@{0} (a9f28340e6d536a9179307bd26169368e450161f)
    


