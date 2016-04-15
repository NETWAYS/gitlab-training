!SLIDE smbullets
# Work on Git History

* git branch
* git checkout
* git commit

~~~SECTION:handouts~~~

****

`git branch` allows you to list, create and delete branches.

`git checkout` will switch between branches, or restore your current working tree.

`git commit` collects and records all changes stages for commit. It uses the configured
user name and email address as commit author. This command opens the configured editor
requiring you to add a commit message.

~~~ENDSECTION~~~

!SLIDE smbullets
# Work on Git History

* git diff
* git merge
* git rebase
* git tag

~~~SECTION:handouts~~~

****

`git diff` shows changes between the current working tree and the last commit. You can
also compare specific commits.

`git merge` allows you to join one or more commit histories together.

`git rebase` imports the commit history from the given head, and adds your local commit
history on top.

`git tag` adds a pointer to the current commit. This is useful to tag release versions, e.g.
`v2.4.5` or any specific milestone. You can also list, delete and verify these tags. If you
want to sign the commit using your GPG key, add `-s`.


~~~ENDSECTION~~~
