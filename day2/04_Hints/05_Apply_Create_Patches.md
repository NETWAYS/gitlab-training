!SLIDE smbullets
# Apply and Create Patches

Manually apply and create Git patches.

* `git apply`: apply git patch
* `git am`: read patches from STDIN and apply them
* `git format-patch`: create git patch

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
