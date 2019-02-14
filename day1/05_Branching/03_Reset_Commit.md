!SLIDE smbullets
# Reset Git Commits

* `git reset`
  * Remove the current commit(s).
  * `--soft` adds changes to the staging index.
  * `--hard` drops them.
* Requires a new commit base specified with `HEAD` or any other pointer.
  * `HEAD~3` points to the 4th commit back in the history, resetting the latest 3 commits

Try it out with the trainer.

    $ git reset --soft HEAD^
    $ git reset --hard HEAD^


~~~SECTION:handouts~~~

****

~~~ENDSECTION~~~


