
!SLIDE smbullets
# Lab ~~~SECTION:MAJOR~~~.~~~SECTION:MINOR~~~: Create GitLab Project

* Objective:
 * Create a new GitLab project for the current user
* Steps:
 * Click the `+` icon next to the search field
 * Choose `New Project`
 * Add the name `training`
 * Leave it as `Private`
 * Untick `Initialize repository with a README` for an empty project
 * Create the project
* Note:
 * Learn about the project view and the HTTPS clone URL

!SLIDE supplemental exercises
# Lab ~~~SECTION:MAJOR~~~.~~~SECTION:MINOR~~~: Create GitLab Project

## Objective: Create a new GitLab project for the current user
****

* Create a new GitLab project for the current user

## Steps:

****

* Click the `+` icon next to the search field
* Choose `New Project`
* Add the name `training`
* Leave it as `Private`
* Untick `Initialize repository with a README` for an empty project
* Create the project

## Note:

****

* Learn about the project view and the HTTPS clone URL


!SLIDE supplemental solutions
# Lab ~~~SECTION:MAJOR~~~.~~~SECTION:MINOR~~~: Proposed Solution
****

## Create a new GitLab project for the current user

****
### Add Project

GitLab 10.x provides `New Project` underneath the `+` icon
in the top menu bar, next to the search form.

Fill in the `Project name` form with `training`, untick `Initialize repository with a README` for an empty project and leave the
other options as default.

### Project View

You'll notice the `HTTPS` URL centered below the project name.

We will be using this remote URL for connecting our local repository
in the next step.

Right now the repository is empty and does not contain any file.
GitLab offers you to add new files, e.g. a README.md file or LICENSE details
directly in the browser. In the background, it is still comitting
the changes to the Git repository.

!SLIDE
# GitLab Issues and Boards

Issues can be used for planning and tracking work (feature requests, bugfixes, questions).

Issues can be annotated with labels.

Milestones allow you to organize issues into a cohesive group.

The issue board is a software project management tool used to plan, organize, and visualize a workflow for a feature or product release.

* Kanban or Scrum board
* Filter by labels
* Drag & drop issues

!SLIDE smbullets
# Lab ~~~SECTION:MAJOR~~~.~~~SECTION:MINOR~~~: Create Milestone and Issues

* Objective
 * Create Milestone `v1.0`
 * Create Issue `Update documentation`

* Steps:
 * Navigate into `Issues > Milestones`
 * Select `New Milestone` and use `v1.0` as title
 * Navigate to `Issues` and select `New issue`
 * Use `Update documentation` as title, add a description
 * Assign the `v1.0` milestone

!SLIDE supplemental exercises
# Lab ~~~SECTION:MAJOR~~~.~~~SECTION:MINOR~~~: Create Milestone and Issues

## Objective: Create Milestone and First Issue
****

* Create Milestone and First Issue

## Steps:

****

* Navigate into `Issues > Milestones`
* Select `New Milestone` and use `v1.0` as title
* Navigate to `Issues` and select `New issue`
* Use `Update documentation` as title, add a description
* Assign the `v1.0` milestone

!SLIDE smbullets
# Lab ~~~SECTION:MAJOR~~~.~~~SECTION:MINOR~~~: Add Project Members

* Objective
 * Add the trainers as Project members

* Steps:
 * Navigate into `Project information > Members`
 * Use `Invite members` and search for the trainers
 * Select the `Developer` role and add the trainers

* Bonus
 * Add a colleague or participant as `Guest`

!SLIDE supplemental exercises
# Lab ~~~SECTION:MAJOR~~~.~~~SECTION:MINOR~~~: Add Project Members

## Objective: Add the trainers as Project members
****

* Add the trainers as Project members

## Steps:

****

* Navigate into `Project information > Members`
* Use `Invite members` and search for the trainers
* Select the `Developer` role and add the trainers

!SLIDE
# GitLab Project Snippets

With GitLab snippets, you can store and share bits of code and text with other users.

* Snippet visibility can differ from the project's visibility
* Snippets are version controlled and have syntax highlighting
* URL is stable and can be shared

Example use cases:

* Guides for less code-savvy people
* Documentation for hard to automate but regular tasks

Can be cloned because they are stored with Git.

Try it out with the trainer.

~~~ENDSECTION~~~

!SLIDE
# GitLab Project Wiki

Every wiki is a separate Git repository, within the project.

* Supports Markdown, Rdoc, AsciiDoc, and Org for content
* Hierarchical links possible
* Mermaid diagrams and charts can be included

Example use cases:

* Additional documentation for the project

Can be cloned because they are stored with Git.

Try it out with the trainer.

~~~ENDSECTION~~~

!SLIDE smbullets
# Connect Local Repository to Remote Server

We can either start a local repository and connect it to a remote server, or clone an existing repository.

* Endpoints for the remote servers are called `remote` in Git.
* Communication is done via SSH/HTTPS (SSH is recommended)
* We need a remote for: `clone`, `push`, `pull`

For training purposes we've started to work offline in `$HOME/training`.

Now we want to publish the local commits to a newly created Git repository
in GitLab.

~~~SECTION:handouts~~~

****

**SSH Keys**

Generate a new SSH key pair on your client.

```
ssh-keygen -t ed25519
```

Copy the public key into your GitLab settings.

```
cat $HOME/.ssh/id_ed25519.pub
```

User > Settings > SSH Keys

~~~ENDSECTION~~~

!SLIDE smbullets
# Lab ~~~SECTION:MAJOR~~~.~~~SECTION:MINOR~~~: Add the repository as remote origin

* Objective:
 * Add the GitLab project as remote origin
* Steps
 * Open the project in GitLab and extract the `HTTPS` clone URL
 * Navigate into your local repository in `$HOME/training`
 * Use `git remote add origin <https-remote-url>`
 * Push the main branch with `git push origin main`

!SLIDE supplemental exercises
# Lab ~~~SECTION:MAJOR~~~.~~~SECTION:MINOR~~~: Add the repository as remote origin

## Objective: Add the repository as remote origin
****

* Add the repository as remote origin

## Steps:

****

* Open the project in GitLab and extract the `HTTPS` clone URL
* Navigate into your local repository
* Use `git remote add origin <https-remote-url>`
* Push the main branch with `git push origin main`

!SLIDE supplemental solutions
# Lab ~~~SECTION:MAJOR~~~.~~~SECTION:MINOR~~~: Proposed Solution
****

## Add the repository as remote origin

****

### Add the remote origin

    @@@ Sh
    $ cd $HOME/training.git
    $ git remote add origin https://[...].nws.netways.de/root/training.git
    $ git fetch

### Push the history

    @@@ Sh
    $ git push

This will not work since the local branch does not follow the remote branch.
Use `--set-upstream` as proposed by the cli output. Short form is `-u`.

    @@@ Sh
    $ cd $HOME/training.git
    $ git remote add origin https://[...].nws.netways.de/root/training.git
    $ git push origin main

### Set default push method

Git versions prior 2.0 did not define the default push method. The default behaviour
was to use the same local branch name for the remote branch name.

The new default method should be `simple` which ensures that the local branches
will only be pushed to remote branches which `git pull` is following.

Our setup did not clone the repository (which includes a virtual git pull). Therefore
the local main branch does not follow a remote branch.

In order to fix that, add the default push method to your global configuration.

    @@@ Sh
    git config --global push.default simple

### Push and update all branches

`git push -u origin main` creates a new remote branch, updates the tracking to the
local current branch and pushes all references/commits.

If you want to sync all local branches, you can omit the branch name in the command and
use `--all` instead.

    @@@ Sh
    git push -u origin --all

Keep in mind that syncing all your local branches might create unwanted remote branches.
Those can be there just for testing things, or are not meant for the public domain.

!SLIDE smbullets
# Lab ~~~SECTION:MAJOR~~~.~~~SECTION:MINOR~~~: Add a credential cache

* Objective:
 * Add the credential cache to the configuration
* Steps
 * Go to your terminal
 * Use `git config credential.helper 'cache --timeout=99999'`

This is only for the training. In reality use SSH authentication.

!SLIDE supplemental exercises
# Lab ~~~SECTION:MAJOR~~~.~~~SECTION:MINOR~~~: Add a credential cache

## Objective: Add the credential cache to the configuration
****

* Add the credential cache to the configuration

## Steps:

****

* Go to your terminal
* Use `git config credential.helper 'cache --timeout=99999'`

This is only for the training. In reality use SSH authentication.

!SLIDE supplemental solutions
# Lab ~~~SECTION:MAJOR~~~.~~~SECTION:MINOR~~~: Proposed Solution
****

## Add a credential cache

****

### Add a credential cache

    @@@ Sh
    $ cd $HOME/training.git
    $ git config credential.helper 'cache --timeout=99999'

This will make git save the credentials you enter the first time you
interact with the server and use them for `99999` seconds before you need to re-enter them.

This is only for the training. In reality use SSH authentication.

!SLIDE smbullets
# Lab ~~~SECTION:MAJOR~~~.~~~SECTION:MINOR~~~: Explore Project History

* Objective:
 * Learn more about GitLab and the project's history
 * Compare the local history to the remote project's history
* Steps:
 * Click on `Files > History` in the project view and examine the Git commits
 * Run `git log` or `tig` on your shell and compare them to GitLab
* Bonus:
 * Use `Repository > Graph` in GitLab

!SLIDE supplemental exercises
# Lab ~~~SECTION:MAJOR~~~.~~~SECTION:MINOR~~~: Explore Project History

## Objective: Learn more about the project history

****

* Learn more about GitLab and the project's history
* Compare the local history to the remote project's history

## Steps:

****

* Click on `Files > History` in the project view and examine the Git commits
* Run `git log` or `tig` on your shell and compare them to GitLab

## Bonus:

* Use `Repository > Graph` in GitLab

!SLIDE supplemental solutions
# Lab ~~~SECTION:MAJOR~~~.~~~SECTION:MINOR~~~: Proposed Solution
****

## Examine GitLab's project history

****

### Project History

Choose `History` and look at the Git commits, their author, subject and timestamp.

Compare it to the local `git log` or `tig` entries.

### GitLab Graphs

Navigate into `Repository > Graph` to get an alternative history view.
