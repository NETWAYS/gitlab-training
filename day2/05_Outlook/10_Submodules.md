!SLIDE
# Git - Submodules

A Git repository can contain other Git repositories via submodules.

* A submodule is a pointer to a specific commit in another repository
* Independent sub directories with their own history

Example:

    @@@Sh
    $ git submodule add https://github.com/Icinga/puppet-icinga2
    $ git status
       new file: .gitmodules
       new file: puppet-icinga2
    $ git submodule
       ad5e309... puppet-icinga2 (heads/master)
    $ git submodule update --remote
       90f5a89... puppet-icinga2 (heads/master)

Note: Git submodule removal is not trivial.

~~~ENDSECTION~~~

!SLIDE
# Git - Subtree

A Git subtree is another option to include other Git repositories within a Git repository.

* Independent sub directories, but a shared history
* Either include the entire history into ours, or squash the remote history into one commit

Example:

    @@@Sh
    $ git subtree add --prefix puppet \
    https://github.com/Icinga/puppet-icinga2 HEAD --squash

Unlike git submodule, git subtree does not create new metadata files (`.gitmodule`).

~~~ENDSECTION~~~
