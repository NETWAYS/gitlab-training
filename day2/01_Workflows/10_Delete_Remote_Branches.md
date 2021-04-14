!SLIDE smbullets
# More Hints: Delete Remote Branches

You have learned that you can create remote (feature) branches. But what if
you want to delete such branches?

`git push origin <branch>` is short for `git push origin <localbranch>:<remotebranch>`.

Pushing `NULL` into a remote branch will delete it.

`git push origin :<remotebranch>`

Hint: You can delete branches in GitLab/GitHub too.

!SLIDE smbullets
# Lab ~~~SECTION:MAJOR~~~.~~~SECTION:MINOR~~~: Delete remote branch

* Objective:
 * Delete remote branch
* Steps:
 * Change into `$HOME/training`
 * Create or identify a remote branch `feature/docs-wrong-name`
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

* Change into `$HOME/training`
* Create or identify a remote branch `feature/docs-wrong-name`
* Delete the remote branch

!SLIDE supplemental solutions
# Lab ~~~SECTION:MAJOR~~~.~~~SECTION:MINOR~~~: Proposed Solution
****

## Delete remote branch

****

### Create and push remote branch

If you do not have any.

    @@@ Sh
    $ cd $HOME/training
    $ git checkout main
    $ git checkout -b feature/docs-wrong-name
    $ git push -u origin feature/docs-wrong-name

### Identify remote branch to delete

    @@@ Sh
    $ git branch -r
      feature/docs-wrong-name

### Delete remote branch

    @@@ Sh
    $ git push origin :feature/docs-wrong-name

Now verify it is gone (Hint: `-r` lists remote branches).

    @@@ Sh
    $ git fetch
    $ git branch -r


