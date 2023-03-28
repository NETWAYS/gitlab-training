!SLIDE smbullets
# Git Tags

Tags are specific points in history, they point to a commit. Useful for:

* Release software versions based on tags (e.g. v2.9.0)
* Checkout versions based on tags
* Tags can/should follow milestone versions in ticket systems

They can be *lightweight* or be *annotated*.

~~~SECTION:handouts~~~

****

Example for checking out a tag into a new branch:

    @@@ Sh
    $ git checkout -b version01 v0.1
    $ git branch

~~~ENDSECTION~~~

!SLIDE smbullets
# Lab ~~~SECTION:MAJOR~~~.~~~SECTION:MINOR~~~: Add a Git tag

* Objective:
 * Add a Git tag
* Steps:
 * Use `git tag` and add the `v0.5` tag
 * Verify the added tag with `git tag -l`
 * Push tags to remote origin with `git push --tags`
 * Open GitLab and navigate into `Repository > Tags`
* Bonus:
 * Add a tag description with `git tag -m "End Of Day One Release" v0.5`

!SLIDE supplemental exercises
# Lab ~~~SECTION:MAJOR~~~.~~~SECTION:MINOR~~~: Add a Git tag

## Objective: Add a Git tag
****

* Add git tag

## Steps:

* Use `git tag` and add the `v0.5` tag
* Verify the added tag with `git tag -l`
* Push tags to remote origin with `git push --tags`
* Open GitLab and navigate into `Repository > Tags`

## Bonus:

* Add a tag description with `git tag -m "End Of Day One Release" v0.5`

!SLIDE supplemental solutions
# Lab ~~~SECTION:MAJOR~~~.~~~SECTION:MINOR~~~: Proposed Solution
****

## Add a Git tag

****

### Add tag

    @@@ Sh
    $ git log
    $ git tag -m "Release v0.1" v0.1

### Verify tag

    @@@ Sh
    $ git tag -l

### Push tags to remote origin

    @@@ Sh
    $ git push --tags

### GitLab

Navigate into the `training` project in `Repository > Tags`.
