!SLIDE smbullets small
# Git Submodules

* Pointer to a specific commit in remote repository
* Independent sub directory with own `.git` repository

Example:

    $ git submodule add https://github.com/Icinga/puppet-icinga2
    $ git status
      new file: .gitmodules
      new file: puppet-icinga2

    $ git submodule
      ad5e30952f3971eea7a52936ccfed1fd904c9fa4 puppet-icinga2 (heads/master)

Fresh clone:

    $ git clone --recursive ...

    $ git clone ...
    $ git submodule init && git submodule update

~~~SECTION:handouts~~~

****

Note: Git submodule removal is not trivial.

https://davidwalsh.name/git-remove-submodule

~~~ENDSECTION~~~
