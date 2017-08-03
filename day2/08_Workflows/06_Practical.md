!SLIDE smbullets
# Practical Examples for Git Workflows

If you are using GitHub repositories, use the forking model which integrates best.

Smart adoptions of the Gitflow workflow could include the following:

* development branch ("master")
* release branches ("support/<version>")
* Fix and feature branches are based off the master
* Bugfixes are cherry-picked into the release branches

This requires a naming schema for branches as well as deep integration
with ticket systems.

~~~SECTION:handouts~~~

****


~~~ENDSECTION~~~

!SLIDE smbullets
# More Hints: Delete Remote Branches

You have learned that you can create remote (feature) branches. But what if
you want to delete such branches?

`git push origin <branch>` is short for `git push origin <localbranch>:<remotebranch>`.

Pushing `NULL` into a remote branch will delete it.

`git push origin :<remotebranch>`.


!SLIDE smbullets
# Lab ~~~SECTION:MAJOR~~~.~~~SECTION:MINOR~~~: Delete remote branch

* Objective:
 * Delete remote branch
* Steps:
 * Create or identify a remote branch
 * Delete the remote branch

~~~SECTION:handouts~~~

****

~~~ENDSECTION~~~

!SLIDE supplemental exercises
# Lab ~~~SECTION:MAJOR~~~.~~~SECTION:MINOR~~~: Delete remote branch

## Objective: Delete remote branch
****

* Delete remote branch

## Steps:

* Create or identify a remote branch
* Delete the remote branch

!SLIDE supplemental solutions
# Lab ~~~SECTION:MAJOR~~~.~~~SECTION:MINOR~~~: Proposed Solution
****

## Delete remote branch

****

### Create and push remote branch

If you do not have any.

    @@@ Sh
    $ git checkout master
    $ git checkout -b feature/to-be-deleted
    $ git push --set-upstream origin feature/to-be-deleted

### Identify remote branch to delete

    @@@ Sh
    $ git branch -r
      feature/to-be-deleted

### Delete remote branch

    @@@ Sh
    $ git push origin :feature/to-be-deleted

Now verify it is gone (Hint: `-r` lists remote branches).

    @@@ Sh
    $ git branch -r


!SLIDE smbullets
# More Hints: Rebase and Squash

The `git rebase` command can also be used to perform certain
actions on a specific commit history.

If you are contributing to open source projects developers
might ask you to either rebase your history or even `squash`
all commits into one commit.

    commit1  => commit
    commit2
    commit3

!SLIDE smbullets
# Lab ~~~SECTION:MAJOR~~~.~~~SECTION:MINOR~~~: Rebase and squash commits

* Objective:
 * Rebase and squash commits
* Steps:
 * Add 3 commits to your history
 * Use `git rebase -i HEAD~3` to start the interactive mode. `HEAD~3` takes the last 3 commits compared to current HEAD.
 * Use `pick` for the top commit`
 * Replace `pick` with `squash` for the other commits
 * Save and edit the final commit message
 * Use `git log` to verify the history
* Bonus:
 * Push the changed commit history using `git push -f` and explain what happens

~~~SECTION:handouts~~~

****

`git rebase` can also be used to `edit` the commits in your history.
This is helpful if you want to amend changes to the test commit. Or if
they are missing issue references, or just contain wrong information.

This is a common scenario for code reviews before merging the actual
history into the development branches.

~~~ENDSECTION~~~

!SLIDE supplemental exercises
# Lab ~~~SECTION:MAJOR~~~.~~~SECTION:MINOR~~~: Rebase and squash commits

## Objective: Rebase and squash commits
****

* Rebase and squash commits

## Steps:

* Add 3 commits to your history
* Use `git rebase -i HEAD~3` to start the interactive mode. `HEAD~3` takes the last 3 commits compared to current HEAD.
* Use `pick` for the top commit`
* Replace `pick` with `squash` for the other commits
* Save and edit the final commit message
* Use `git log` to verify the history

## Bonus:

* Push the changed commit history using `git push -f` and explain what happens

!SLIDE supplemental solutions
# Lab ~~~SECTION:MAJOR~~~.~~~SECTION:MINOR~~~: Proposed Solution
****

## Rebase and squash commits

****

### Add 3 commits to your history

If you do not have any.

    @@@ Sh
    $ git checkout master
    $ git checkout -b feature/squash-test

    @@@ Sh
    $ echo "1" > check_squash
    $ git commit -av -m "commit1"
    $ echo "2" >> check_squash
    $ git commit -av -m "commit2"
    $ echo "3" >> check_squash
    $ git commit -av -m "commit3"

### Use git rebase to squash three commits

Use the interactive mode by specifying the `-i` parameter.
`HEAD~3` uses the commit range three commits to the current
HEAD commit.

    @@@ Sh
    $ git rebase -i HEAD~3

The interactive mode opens the editor you are familiar with
from commit messages.

### Choose the commits to squash

The first commit needs to be picked, the other ones are squashed.

    @@@ Sh
    pick f37e91d commit1
    squash 2d20176 commit2
    squash e3d2efa commit3

    # Rebase 28d088b..e3d2efa onto 28d088b (3 commands)
    #
    # Commands:
    # p, pick = use commit
    # r, reword = use commit, but edit the commit message
    # e, edit = use commit, but stop for amending
    # s, squash = use commit, but meld into previous commit
    # f, fixup = like "squash", but discard this commit's log message
    # x, exec = run command (the rest of the line) using shell
    # d, drop = remove commit
    #
    # These lines can be re-ordered; they are executed from top to bottom.
    #
    # If you remove a line here THAT COMMIT WILL BE LOST.
    #
    # However, if you remove everything, the rebase will be aborted.
    #
    # Note that empty commits are commented out

Save and continue (`:wq`in vim).

### Edit the squashed commit message

    @@@ Sh
    # This is a combination of 3 commits.
    # This is the 1st commit message:
    commit1
    
    # This is the commit message #2:
    
    commit2
    
    # This is the commit message #3:
    
    commit3

Save and continue.

### Verify the commit history

    @@@ Sh
    $ git log

### Force push the changes to remote origin

The local history has been diverged from the remote
origin's history. The local history contains all
required changes therefore we need to override
the remote commit history by using `git push -f`.

    @@@ Sh
    git push -f origin feature/squash-test

**Note**: Overriding the remote history is dangerous.
Only do that in feature branches, never in master.

Git hooks may help preventing force pushes for the
master.
