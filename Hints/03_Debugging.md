!SLIDE smbullets
# Debugging

* `git bisect`: binary search for commits causing a bug
* `git blame`: open editor with commit/author/date addition
* `git grep`: search for pattern in commit history

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
    $ git blame testfile

### Modify and commit changes and use Git Blame again

    @@@ Sh
    $ echo "1" >> testfile && git commit -av -m "1"
    $ echo "2" >> testfile && git commit -av -m "2"

    $ git blame testfile
