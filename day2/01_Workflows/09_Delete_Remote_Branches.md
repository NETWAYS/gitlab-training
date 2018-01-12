!SLIDE smbullets
# More Hints: Delete Remote Branches

You have learned that you can create remote (feature) branches. But what if
you want to delete such branches?

`git push origin <branch>` is short for `git push origin <localbranch>:<remotebranch>`.

Pushing `NULL` into a remote branch will delete it.

`git push origin :<remotebranch>`


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


