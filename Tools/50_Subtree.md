!SLIDE smbullets
# Git Subtree

* Import an external git repository history
* Directory in your main repository (`--prefix`)
* Squash the remote history into one commit
* No external dependency (e.g. git submodule repository not available anymore)
* No local configuration - document the external reference

~~~SECTION:handouts~~~

****

Adding a git subtree requires

* Existing directory tree except for the one created
* Git clone URL
* The branch which should be added (use `master` as default)
* Optionally `--squash` all commits into one

Example:

    git subtree add --prefix clippy.js https://github.com/smore-inc/clippy.js.git master --squash


~~~ENDSECTION~~~
