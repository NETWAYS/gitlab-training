!SLIDE smbullets
# Feature Branch Workflow

* Feature development takes place in dedicated branches
* Does not interfere with the main codebase
* Master branch does not contain broken code
* Feature branches can be rebased against stable master branch on demand

<center><img src="../_images/workflows/git_feature_branch_workflow_01.png" alt="Feature Branch Workflow"/></center>

~~~SECTION:handouts~~~

****


~~~ENDSECTION~~~

!SLIDE smbullets
# Feature Branch Workflow - How it works

* Central repository
* Create a new branch for each feature
* Descriptive branch names, e.g. `feature/cool-issue-10718`
* Changes in a feature branch similar to centralized workflow
* Push feature branches to central repository for collaboration with other developers


~~~SECTION:handouts~~~

****


~~~ENDSECTION~~~


!SLIDE smbullets
# Lab ~~~SECTION:MAJOR~~~.~~~SECTION:MINOR~~~: Use Feature Branches

* Objective:
 * Create a new feature branch
* Steps:
 * Use `git checkout -b` to create a new feature branch based on the master
 * Add and commit changes
 * Push the branch to your central repository

~~~SECTION:handouts~~~

****

~~~ENDSECTION~~~

!SLIDE supplemental exercises
# Lab ~~~SECTION:MAJOR~~~.~~~SECTION:MINOR~~~: Use Feature Branches

## Objective: Create a new feature branch
****

* Create a new feature branch

## Steps:

****

* Use `git checkout -b` to create a new feature branch based on the master
* Add and commit changes
* Push the branch to your central repository

!SLIDE supplemental solutions
# Lab ~~~SECTION:MAJOR~~~.~~~SECTION:MINOR~~~: Proposed Solution
****

## Use Feature Branches

****

### Create a new branch

The new branch `my-feature` will be based on the `master` branch.

    @@@ Sh
    $ git checkout -b my-feature master

### Add and commit changes

    @@@ Sh
    $ cat "# TODOs for feature" > feature.md
    $ git add feature.md
    $ git commit -v -m "Start my feature"

### Push your feature branch

    @@@ Sh
    $ git push --set-upstream origin my-feature


!SLIDE smbullets
# Lab ~~~SECTION:MAJOR~~~.~~~SECTION:MINOR~~~: Merge Feature Branches

* Objective:
 * Update master branch and merge feature branch

* Steps:
 * Checkout the `master` branch
 * Add, commit and push changes
 * Checkout your feature branch (hint: `git branch` lists all branches)
 * Diff your feature branch to the current master
 * Checkout the `master` branch
 * Merge the feature branch
 * Show the graphical history with `git log --pretty=oneline --abbrev-commit --graph`

~~~SECTION:handouts~~~

****

~~~ENDSECTION~~~

!SLIDE supplemental exercises
# Lab ~~~SECTION:MAJOR~~~.~~~SECTION:MINOR~~~: Merge Feature Branches

## Objective: Merge Feature Branches
****

* Update master branch and merge feature branch

## Steps:

****

* Checkout the `master` branch
* Add, commit and push changes
* Checkout your feature branch (hint: `git branch` lists all branches)
* Diff your feature branch to the current master
* Checkout the `master` branch
* Merge the feature branch
* Show the graphical history with `git log --pretty=oneline --abbrev-commit --graph`


!SLIDE supplemental solutions
# Lab ~~~SECTION:MAJOR~~~.~~~SECTION:MINOR~~~: Proposed Solution
****

## Merge Feature Branches

****

### Checkout the master branch and add changes

    @@@ Sh
    $ git checkout master
    $ cat "master" > file
    $ git add file
    $ git commit -v -m "Add master fix"
    $ git push origin master

### Checkout the feature branch and compare it with the master branch

    @@@ Sh
    $ git branch
    $ git checkout my-feature
    $ git diff master my-feature

### Checkout the master and merge the feature branch

    @@@ Sh
    $ git checkout master
    $ git merge my-feature

### Examine the history

    @@@ Sh
    $ git log --pretty=oneline --abbrev-commit --graph






