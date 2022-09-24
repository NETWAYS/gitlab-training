!SLIDE smbullets
# Reset Git Commits

* `git reset`
  * Remove the current commit(s)
  * `--soft` adds changes to the staging index
  * `--hard` drops them
* Requires a new commit base specified with `HEAD` or any other pointer
  * `HEAD~3` points to the 4th commit back in the history, resetting the latest 3 commits

Try it out with the trainer.

    $ git reset --soft HEAD^
    $ git reset --hard HEAD^

!SLIDE smbullets
# Revert Git Commits

* `git revert <sha>`
  * Revert some existing commit(s)
* Creates a new commit that will revert the existing commit(s)

Try it out with the trainer.

    $ git revert HEAD^


~~~SECTION:handouts~~~

****

~~~ENDSECTION~~~


