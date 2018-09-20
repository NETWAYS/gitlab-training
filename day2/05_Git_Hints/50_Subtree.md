!SLIDE smbullets small
# Git Subtree

* Merge an external git repository history
* Directory in your main repository (`--prefix`)
* Squash the remote history into one commit
* No external dependency (e.g. git submodule repository not available anymore)
* No local configuration - document the external reference

Example for imported Puppet modules:

    $ git subtree add --prefix modules/icinga2 \
    https://github.com/Icinga/puppet-icinga2 HEAD --squash

    $ git subtree pull  --prefix modules/icinga2 \
    https://github.com/Icinga/puppet-icinga2 HEAD --squash

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
