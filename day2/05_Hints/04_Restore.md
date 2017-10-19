!SLIDE smbullets
# Restore deleted file

This is where `git rev-list` comes in handy.

Find the last commit which affected the given path.

`git rev-list -n 1 HEAD -- <filepath>`.

Then checkout the version at the commit before using the caret `^` symbol.

`git checkout <deletingcommit>^ -- <filepath>`.

