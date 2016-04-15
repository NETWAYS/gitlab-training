!SLIDE smbullets
# Advanced commands

* git cherry-pick
* git apply
* git am
* git archive

~~~SECTION:handouts~~~

****

`git cherry-pick` collects a specific commit into your working tree.

`git apply` applies a git patch file to your working tree.

`git am` reads git patches from your mailbox by default. It also can be used to
read patches from the shell's STDIN (e.g. curl downloading a patch from the web).
The `-s` option allows you to sign off the patch, for example if you have reviewed
the patch from an external committer.

`git archive` creates a tarball from the given working tree (HEAD or tag).

~~~ENDSECTION~~~
