!SLIDE smbullets
# Advanced commands

* `git cherry-pick`: collect commit into your working tree
* `git archive`: create tarball
* `git stash`: put current changes on a temporary stack

~~~SECTION:handouts~~~

****

`git cherry-pick` collects a specific commit into your working tree.

`git archive` creates a tarball from the given working tree (HEAD or tag).

`git stash` allows you put your current changes on a temporary stack (`stash`).
This comes in handy when you want to change branches with a different history
where your uncommitted changes will not apply.
Use `git stash pop` to fetch the changes again. You can stash multiple uncommitted
stages, `git stash list` will list them.

~~~ENDSECTION~~~
