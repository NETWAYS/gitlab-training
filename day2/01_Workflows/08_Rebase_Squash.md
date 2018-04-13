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
 * Use `pick` for the top commit
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
    $ echo "# Rebase and Squash" >> README.md
    $ git commit -av -m "commit1"
    $ echo "  " >> README.md
    $ git commit -av -m "commit2"
    $ echo "`git rebase -i` is interactive" >> README.md
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

    @@@ Sh
    pick 5a31d9e commit1
    squash ce90e16 commit2
    squash ed6a68f commit3
