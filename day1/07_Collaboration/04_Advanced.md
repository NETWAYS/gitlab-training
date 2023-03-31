!SLIDE smbullets
# Advanced Git Commands: Stash

* `git stash`
 * Moves the current working directory to a temporary stack
 * The stash is only local, not stored in the central repository
 * Useful when changing branches or pulling
 * Use with care, apply and drop changes immediately after changing back

Example:

    @@@ Sh
    $ git stash
    Saved working directory and index state WIP on main: 4b4f6c2 <msg>
    
    $ git stash apply
    On branch main
    Your branch is up to date with 'origin/main'.
    
    Changes to be committed:
    (use "git restore --staged <file>..." to unstage)
    new file:   <your file>

    $ git stash drop
    Dropped refs/stash@{0} (43d879b99aca12b6175c5362339b177af22589a9)

~~~SECTION:handouts~~~

****

`git stash` allows you put your current changes on a temporary stack (`stash`).
This comes in handy when you want to change branches with a different history
where your uncommitted changes will not apply.
Use `git stash apply` to copy them from the stash to your working directory again.
Use `git stash drop` to remove your stashed changes.

You can stash multiple uncommitted
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
 * Fetch the previously stashed changes with `git stash apply`
 * Drop the stashed changes with `git stash drop`

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
 * Fetch the previously stashed changes with `git stash apply`
 * Drop the stashed changes with `git stash drop`

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
    Saved working directory and index state WIP on main: 31dcde5 Add docs for git push
    HEAD is now at 31dcde5 Add docs for git push

### Examine the state with git status

    @@@ Sh
    $ git status
    On branch main
    nothing to commit, working tree clean

### Examine the stash list

    @@@ Sh
    $ git stash list
    stash@{0}: WIP on main: 31dcde5 Add docs for git push

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
    $ git stash apply
    
    On branch main
    Your branch is up to date with 'origin/main'.

    Changes to be committed:
    (use "git restore --staged <file>..." to unstage)
    new file:   README.md

### Drop the stashed changes

    @@@ Sh
    $ git stash drop

    Dropped refs/stash@{0} (a9f28340e6d536a9179307bd26169368e450161f)


!SLIDE smbullets
# Advanced Git Commands: Cherry-Pick

* `git cherry-pick`
  * Integrates a specific commit into your working tree
  * Hint: When the base commit differs, the checksum changes, thus new commit ID
  * `-x` can be used to keep a reference to the original commit

Example:

    $ git cherry-pick -x ef5d1c2


!SLIDE smbullets
# Lab ~~~SECTION:MAJOR~~~.~~~SECTION:MINOR~~~: Learn more about git cherry-pick

* Objective:
 * Learn more about git cherry-pick
* Steps:
 * Create and checkout the `feature/docs-hotfix` branch
 * Edit `README.md` and commit the change
 * Use `git log -1` to examine the Git commit
 * Checkout the main branch
 * Use `git cherry-pick -x <id>`
 * Verify the commit with `git show`

!SLIDE supplemental exercises
# Lab ~~~SECTION:MAJOR~~~.~~~SECTION:MINOR~~~: Learn more about git cherry-pick

## Objective: Learn more about git cherry-pick
****

* Learn more about git cherry-pick

## Steps:

* Create and checkout the `feature/docs-hotfix` branch
* Edit `README.md` and commit the change
* Use `git log -1` to examine the Git commit
* Checkout the main branch
* Use `git cherry-pick -x <id>`
* Verify the commit with `git show`

!SLIDE supplemental solutions
# Lab ~~~SECTION:MAJOR~~~.~~~SECTION:MINOR~~~: Proposed Solution
****

## Learn more about git cherry-pick

****

### Create and checkout the feature/docs-hotfix branch

    @@@ Sh
    $ git checkout -b feature/docs-hotfix

### Edit README and commit the change

    @@@ Sh
    $ cd $HOME/training
    $ vim README.md

    Now I am learning how to use git cherry-pick. This change will be cherry-picked
    into the main branch simulating a hot-fix.

    $ git commit -av -m "Update docs for cherry-pick"

### Fetch Commit ID

    @@@ Sh
    $ git show -1
    commit 550ccc6c65832d43969f44a03692772a30fa39fb (HEAD -> feature/docs-hotfix)

### Checkout the main branch

    @@@ Sh
    $ git checkout main

#### Cherry-pick the commit

    @@@ Sh
    $ git cherry-pick 550ccc6c65832d43969f44a03692772a30fa39fb

    [main 0460d16] Update docs for cherry-pick
    Date: Thu Jan 24 14:52:19 2019 +0100
    1 file changed, 3 insertions(+)

### Verify the commit

    @@@ Sh
    $ git show
    commit 2f3a0096017051d9ab86774282203dc6c9827ee4 (HEAD -> main)
    Author: Michael Friedrich <michael.friedrich@netways.de>
    Date:   Thu Jan 24 14:52:19 2019 +0100

        Update docs for cherry-pick

        (cherry picked from commit 550ccc6c65832d43969f44a03692772a30fa39fb)
