!SLIDE smbullets
# Advanced Git Commands

* `git stash`
  * Put current changes on a temporary stack.
* `git cherry-pick`
  * Collect specific commit into your working tree.
* `git reset`
  * Remove the current commit(s).
  * `--soft` adds changes to the staging index.
  * `--hard` drops them indefinitely.
* `git archive`
  * Create tarball without the `.git directory`.

~~~SECTION:handouts~~~

****

`git cherry-pick` collects a specific commit into your working tree.

`git stash` allows you put your current changes on a temporary stack (`stash`).
This comes in handy when you want to change branches with a different history
where your uncommitted changes will not apply.
Use `git stash pop` to fetch the changes again. You can stash multiple uncommitted
stages, `git stash list` will list them.

`git archive` creates a tarball from the given working tree (HEAD or tag).
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
 * Examine the stash with `git stash list`
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
* Examine the stash with `git stash list`
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

### Fetch previously stashed changes

    @@@ Sh
    $ git stash pop
    
    Dropped refs/stash@{0} (a9f28340e6d536a9179307bd26169368e450161f)
    


!SLIDE smbullets
# Reset Git Commits

* `git reset`
  * Remove the current commit(s).
  * `--soft` adds changes to the staging index.
  * `--hard` drops them indefinitely.

Try it out with the trainer.

    $ git reset --soft HEAD^

    $ git reset --hard HEAD^


~~~SECTION:handouts~~~

****

~~~ENDSECTION~~~
