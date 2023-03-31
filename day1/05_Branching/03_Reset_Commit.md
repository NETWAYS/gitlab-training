!SLIDE smbullets
# Reset Git Commits

* `git reset`
  * Resets the history up to a specific point
  * `--soft` adds changes to the staging area
  * `--hard` drops them
* Requires a commit as parameter to which we want to reset to
  * `HEAD^` resetting the last commit
  * `HEAD~3` resetting the latest 3 commits

Try it out with the trainer.

    $ git reset --soft HEAD^
    $ git reset --hard HEAD^

!SLIDE smbullets
# Revert Git Commits

* `git revert <sha>`
  * Reverts some existing commits
  * Creates a new commit that will revert the existing commits

Try it out with the trainer.

    $ git revert HEAD^
    $ git revert HEAD~2
