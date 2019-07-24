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

Ask the trainer to draw an image for better illustration and discussion.

!SLIDE smbullets
# Lab ~~~SECTION:MAJOR~~~.~~~SECTION:MINOR~~~: Rebase and squash commits

* Objective:
 * Rebase and squash commits
* Steps:
 * Add 3 commits to the `master` branch and push them.
 * Use `git rebase -i HEAD~3` to start the interactive mode. `HEAD~3` takes the last 3 commits compared to current HEAD.
 * Use `pick` for the top commit
 * Replace `pick` with `squash` for the other commits
 * Save and edit the final commit message
 * Use `git log` to verify the history

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

* Add 3 commits to the `master` branch and push them.
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

    @@@ Sh
    $ echo "# Rebase and Squash" >> README.md
    $ git commit -av -m "commit1"
    $ echo "  " >> README.md
    $ git commit -av -m "commit2"
    $ echo "`git rebase -i` is interactive" >> README.md
    $ git commit -av -m "commit3"

    @@@ Sh
    $ git push

### Use git rebase to squash three commits

Use the interactive mode by specifying the `-i` parameter.
`HEAD~3` uses the commit range three commits to the current
HEAD commit.

    @@@ Sh
    $ git rebase -i HEAD~3

The interactive mode opens the editor you are familiar with
from commit messages.

### Choose the commits to squash

    @@@ Sh
    pick 5a31d9e commit1
    squash ce90e16 commit2
    squash ed6a68f commit3



!SLIDE smbullets
# Lab ~~~SECTION:MAJOR~~~.~~~SECTION:MINOR~~~: Force Push and Protected Branches

* Objective:
 * Try to force push and learn about protected branches in GitLab
* Steps:
 * Run `git push -f` in the master branch
 * Explain the error
 * Navigate into `GitLab > Project > Settings > Repository`
 * Temporarily unprotected the `master` branch
 * Run `git push -f` again
 * Protect the `master` branch again and discuss with the trainer

~~~SECTION:handouts~~~

****

Read more about protected branches and why they are useful here:
https://about.gitlab.com/2014/11/26/keeping-your-code-protected/

Possible use cases for protecting branches:

* Releases are tagged from the `master` branch, no-one should be allowed
to modify this history at any point in time.
* In case you are supporting older versions, you'll probably have `release/x.y`
or `support/x.y` branches. No-one is allowed to override anything in there.

In case a commit gets lost, either being deleted or the history is rewritten,
the corresponding release tag points to nothing. Meaning to say, that release
is broken.

Therefore it is advised to protect sensitive branches in the project's repository.

**Hint**: Project maintainers can edit the settings. If you have the requirement
to make this a permanent setting as administrator, you can e.g. use the REST API
to always force this setting with a small script and cronjob.


~~~ENDSECTION~~~

!SLIDE supplemental exercises
# Lab ~~~SECTION:MAJOR~~~.~~~SECTION:MINOR~~~: Force Push and Protected Branches

## Objective: Force Push and Protected Branches
****

* Try to force push and learn about protected branches in GitLab

## Steps:

* Run `git push -f` in the master branch
* Explain the error
* Navigate into `GitLab > Project > Settings > Repository`
* Temporarily unprotected the `master` branch
* Run `git push -f` again
* Protect the `master` branch again and discuss with the trainer

!SLIDE supplemental solutions
# Lab ~~~SECTION:MAJOR~~~.~~~SECTION:MINOR~~~: Proposed Solution
****

## Force Push and Protected Branches

### Force Push

    @@@ Sh
    $ git checkout master
    $ git push -f

### Unprotect the master

Navigate into `GitLab > Project > Settings > Repository`
and choose `Protected Branches > Expand`.

Select the `master` branch and click `Unprotect`.

### Force Push Again

    @@@ Sh
    $ git push -f

### Protect the Master Branch again
****

Navigate into `GitLab > Project > Settings > Repository`
and choose `Protected Branches > Expand`.

Add `master` as protected branch, and set all options to
`maintainers` again.

!SLIDE smbullets
# More Hints: Force Push in shared branch, what now?

* You pulled the 3 commits now being squashed in master.
* Your colleague force pushed the branch with 1 squashed commit.
* You cannot rebase anymore.
* Instead, you need to reset your local branch to the remote branch base.

Discuss this with the trainer.

    $ git fetch
    $ git checkout feature/new-backend
    $ git reset --hard origin/feature/new-backend

