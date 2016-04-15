!SLIDE smbullets
# Examine the history and state

* git status
* git log
* git show
* git grep
* git bisect

~~~SECTION:handouts~~~

****

`git status` shows the current working tree status. Untracked files and changes (not) staged
for commit.

`git log` shows the commit history of the current branch.

`git show` will print the last commit details. If you want to print a specific commit id, add
it afterwards.

`git grep` prints all lines from the commit history matching a pattern.

`git bisect` can be used to invoke a binary search to find the commit that introduced a bug.

~~~ENDSECTION~~~
