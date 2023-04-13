!SLIDE subsection
# ~~~SECTION:MAJOR~~~ Appendix

!SLIDE smbullets
# Git - Debugging

* `git bisect`
  * Can be used to invoke a binary search to find the commit that introduced a bug
* `git grep`
  * Prints all lines from the commit history matching a pattern

!SLIDE smbullets
# Git - Restoring deleted file

Deleted files are still in the history. This is where `git rev-list` comes in handy.

* `git rev-list -n 1 HEAD -- <filepath>`
  * Find the last commit which affected the given path
* `git checkout <deletingcommit>^ -- <filepath>`
  * Then checkout the version at the commit before using the caret `^` symbol

!SLIDE smbullets
# Git - Apply and Create Patches

Before Merge Requests existed, developers created Git patches to share their code.

* `git format-patch`
  * Creates a Git patch file
* `git apply`
  * Apply a Git patch file
* `git am`
  * Reads patches from STDIN and applies them

~~~SECTION:handouts~~~

****

`git apply` applies a git patch file to your working tree.

`git am` reads git patches from your mailbox by default. It also can be used to
read patches from the shell's STDIN (e.g. curl downloading a patch from the web).
The `-s` option allows you to sign off the patch, for example if you have reviewed
the patch from an external committer.

`git format-patch` requires either a negative number of commits from current HEAD or
a git commit id. It will then create numbered patch files for all required commits.

~~~ENDSECTION~~~
