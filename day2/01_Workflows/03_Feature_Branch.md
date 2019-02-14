!SLIDE smbullets noprint
# Feature Branch Workflow

* Feature development happens in named branches
* Does not interfere with the main codebase
* Master branch does not contain broken code
* Feature branches can be rebased against stable master branch on demand

<center><img src="../../_images/workflows/git_feature_branch_workflow_01.png" alt="Feature Branch Workflow"/></center>

!SLIDE smbullets printonly
# Feature Branch Workflow

* Feature development happens in named branches
* Does not interfere with the main codebase
* Master branch does not contain broken code
* Feature branches can be rebased against stable master branch on demand

<center><img src="../../_images/workflows/git_feature_branch_workflow_01.png" style="width:450px" alt="Feature Branch Workflow"/></center>

~~~SECTION:handouts~~~

****


~~~ENDSECTION~~~

!SLIDE smbullets
# Feature Branch Workflow - How it works

* Create a new branch for each feature
* Descriptive branch names, e.g. `feature/docs-workflows`
* Changes in a feature branch similar to centralized workflow
* Push feature branches to central repository for collaboration with other developers


~~~SECTION:handouts~~~

****


~~~ENDSECTION~~~


!SLIDE smbullets
# Lab ~~~SECTION:MAJOR~~~.~~~SECTION:MINOR~~~: Use Feature Branches

* Objective:
 * Create a new feature branch `feature/docs-workflows`
* Steps:
 * Change into `$HOME/training`
 * Use `git checkout -b feature/docs-workflows` to create a new feature branch based on the master
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

* Change into `$HOME/training`
* Use `git checkout -b feature/docs-workflows` to create a new feature branch based on the master
* Add and commit changes
* Push the branch to your central repository

!SLIDE supplemental solutions
# Lab ~~~SECTION:MAJOR~~~.~~~SECTION:MINOR~~~: Proposed Solution
****

## Use Feature Branches

****

### Create a new branch

The new branch `feature/docs-workflows` will be based on the `master` branch.

    @@@ Sh
    $ cd $HOME/training
    $ git checkout master
    $ git checkout -b feature/docs-workflows

### Add and commit changes

    @@@ Sh
    $ vim README.md

    ## Workflows

    Central Workflow and now feature workflows with descriptive branch names.

    $ git add README.md
    $ git commit -v README.md -m "Update docs for Git workflows"

### Push your feature branch

    @@@ Sh
    $ git push -u origin feature/docs-workflows


!SLIDE smbullets
# Lab ~~~SECTION:MAJOR~~~.~~~SECTION:MINOR~~~: Merge Feature Branches

* Objective:
 * Update `master` branch and merge feature branch `feature/docs-workflows`

* Steps:
 * Checkout the feature branch `feature/docs-workflows`
 * Edit `README.md`, add and commit the changes
 * Diff the feature branch to the current master with `git diff master`
 * Checkout the `master` branch, merge the feature branch as non-fast-forward with `--no-ff`
 * Show the history tree with `tig` or inside GitLab and explain why the forced merge commit with `--no-ff` is important

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

* Change into `$HOME/training`
* Checkout the feature branch `feature/docs-workflows`
* Edit `README.md`, add and commit the changes
* Diff the feature branch to the current master with `git diff master`
* Checkout the `master` branch
* Merge the feature branch as non-fast-forward with `--no-ff`
* Show the history tree with `tig` or inside GitLab

## Bonus:

****

 * Explain why the forced merge commit with `--no-ff` is important

!SLIDE supplemental solutions
# Lab ~~~SECTION:MAJOR~~~.~~~SECTION:MINOR~~~: Proposed Solution
****

## Merge Feature Branches

****

### Checkout the feature branch and add a commit

    @@@ Sh
    $ cd $HOME/training
    $ git checkout feature/docs-workflows
    $ vim README.md

    I'm learning about workflows today.

    $ git add README.md
    $ git commit -v README.md -m "Update docs for workflows"
    $ git push origin feature/docs-workflows

### Checkout the feature branch and compare it with the master branch

    @@@ Sh
    $ git branch
    $ git checkout feature/docs-workflows
    $ git diff master feature/docs

### Checkout the master and merge the feature branch

    @@@ Sh
    $ git checkout master
    $ git merge --no-ff feature/docs-workflows

    In this commit message, I may add a reference to a GitLab issue like this
    to automatically resolve it after merge.

    fixes #12

### Examine the history

    @@@ Sh
    $ tig






