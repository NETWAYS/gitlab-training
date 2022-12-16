!SLIDE subsection
# ~~~SECTION:MAJOR~~~ Further Git Features


!SLIDE smbullets
# Debugging

* `git bisect`
  * Binary search for commits causing a bug
* `git blame`
  * Open editor with commit/author/date addition
* `git grep`
  * Search for pattern in commit history

~~~SECTION:handouts~~~

****

`git bisect` can be used to invoke a binary search to find the commit that introduced a bug.

`git blame` prints a file and each line changed by the latest commit and author.

`git grep` prints all lines from the commit history matching a pattern.


~~~ENDSECTION~~~

!SLIDE smbullets
# Lab ~~~SECTION:MAJOR~~~.~~~SECTION:MINOR~~~: Use Git Blame

* Objective:
 * Use `git blame`
* Steps:
 * Pick a file from your local git repository
 * Use `git blame filename`
 * Explain the line prefix and its meaning

!SLIDE supplemental exercises
# Lab ~~~SECTION:MAJOR~~~.~~~SECTION:MINOR~~~: Use Git Blame

## Objective: Use Git Blame
****

* Use `git blame`

## Steps:

****

* Pick a file from your local git repository
* Use `git blame filename`
* Explain the line prefix and its meaning


!SLIDE supplemental solutions
# Lab ~~~SECTION:MAJOR~~~.~~~SECTION:MINOR~~~: Proposed Solution
****

## Use Git Blame

****

### Pick a file and use Git Blame

    @@@ Sh
    $ git blame README.md

### Modify and commit changes and use Git Blame again

    @@@ Sh
    $ echo "Blame me" >> README.md && git commit -av -m "Blame me"
    $ echo "Blame me, too." >> README.md && git commit -av -m "Blame me, too"

    $ git blame README.md
