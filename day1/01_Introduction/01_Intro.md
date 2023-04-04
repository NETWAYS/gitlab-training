!SLIDE subsection
# ~~~SECTION:MAJOR~~~ Git Introduction

!SLIDE smbullets
# Why use Version Control Systems?

* Version Control Systems (VCS) track changes over time
* They track who changed what and when
* Changes can be compared, reverted, coordinated with others

Usually VCS are used for source code, text documents, web sites, or other text data.

There are also data VCS for data science or machine learning projects.

~~~SECTION:handouts~~~

****

The most simple version control system is to copy
directories and add a suffix like the last date it
worked. Though this might cause trouble when you're
in the wrong directory. Afterall it pollutes your
filesystem structure over time.

Long time ago developers invented version control
systems which store the file revisions in a database.

~~~ENDSECTION~~~

!SLIDE
# Centralized and Distributed VCS

* Central VCS
  * A central system contains the *version database*, clients work on this system
  * Examples: CVS, Subversion
* Decentral VCS
  * Clients mirror the *version database* from a central system and work locally
  * Examples: Git, Mercurial

<table>
  <tbody>
    <tr>
      <td><center><img src="../../_images/mermaid/central-vcs.mmd.png" alt="Central VCS"/></center></td>
      <td><center><img src="../../_images/mermaid/decentral-vcs.mmd.png" alt="Decentral VCS"/></center></td>
    </tr>
  </tbody>
</table>

!SLIDE
# The History of Git

Git was developed by the Linux kernel team in 2005.

* They originally used BitKeeper, a closed-source commercial tool
* They created Git due to some controversy with BitKeeper

Their design goals:

* A fully distributed VCS
* Speed (when working with huge numbers of files)
* Simple design
* Non-linear development (branching)

Git has become a de facto standard for version control.

!SLIDE smbullets
# The Git Workfow is local

In Git we `clone` the data to our local system and work locally.

* No network latency involved as with other VCS systems
* Faster operations due to the local data
* We can work offline and push changes later (i.e. when traveling)

!SLIDE smbullets
# Git Installation

The Git CLI is available for most operating systems.

* Linux package are available in most distibutions
* Installers for macOS or Windows
* Many GUI clients are available

Optional shell integrations provide auto-completion and quality-of-life features.

<code><span style="color:blue;">training@netways</span> <span style="color:green">~</span>$</span> cd repository</code>

<code><span style="color:blue;">training@netways</span> <span style="color:green">~/repository</span> <span style="color:red">(feature/docs)</span> $</code>

!SLIDE smbullets
# Lab ~~~SECTION:MAJOR~~~.~~~SECTION:MINOR~~~: Install Git

* Objective:
 * Install the `git` package
* Steps:
 * Use the package manager to install the git package

!SLIDE supplemental exercises
# Lab ~~~SECTION:MAJOR~~~.~~~SECTION:MINOR~~~: Install Git

## Objective: Install the Git package
****

* Install the `git` package

## Steps:

****

* Use the package manager to install the git package

!SLIDE supplemental solutions
# Lab ~~~SECTION:MAJOR~~~.~~~SECTION:MINOR~~~: Proposed Solution
****

## Install the Git package

****

### Example for Debian/Ubuntu

    @@@ Sh
    $ apt-get install git

### Example for RHEL/CentOS

    @@@ Sh
    $ yum install git

### Example for Fedora

    @@@ Sh
    $ dnf install git

!SLIDE smbullets small
# Lab ~~~SECTION:MAJOR~~~.~~~SECTION:MINOR~~~: Install Git Bash Integration

* Objective:
 * Install bash completion and Git status
* Steps:
 * Use the package manager to install the `bash-completion` package
 * Fetch the `git-prompt.sh` script from https://github.com/git/git - `contrib/completion/git-prompt.sh`
 * Customize your prompt in your `$HOME/.bashrc` file

Example:

    $ vim $HOME/.bashrc
    source ~/git-prompt.sh
    export GIT_PS1_SHOWDIRTYSTATE=1
    export PS1='[\u@\h] \W$(__git_ps1 " (%s)") \$ '

    $ source $HOME/.bashrc

!SLIDE supplemental exercises
# Lab ~~~SECTION:MAJOR~~~.~~~SECTION:MINOR~~~: Install Git Bash Integration

## Objective: Install the Git Bash Integration
****

* Install the `bash-completion` package
* Modify your prompt to highlight the git state

## Steps:

****

* Use the package manager to install the `bash-completion` package
* Fetch the `git-prompt.sh` script from https://raw.githubusercontent.com/git/git/master/contrib/completion/git-prompt.sh
* Customize your prompt
* Persist changes in your .bashrc file

!SLIDE supplemental solutions
# Lab ~~~SECTION:MAJOR~~~.~~~SECTION:MINOR~~~: Proposed Solution
****

## Install Git Bash Integration

****

### Example for Debian/Ubuntu

    @@@ Sh
    $ apt-get install bash-completion

### Example for RHEL/CentOS

    @@@ Sh
    $ yum install bash-completion

### Example for Fedora

    @@@ Sh
    $ dnf install bash-completion

### Fetch the git-prompt.sh script

    @@@ Sh
    $ wget https://raw.githubusercontent.com/git/git/master/contrib/completion/git-prompt.sh

### Customize your prompt in your .bashrc file

Additional configuration settings can be found
in the source code documentation at https://github.com/git/git/blob/master/contrib/completion/git-prompt.sh#L38

    @@@ Sh
    $ vim $HOME/.bashrc
    source ~/git-prompt.sh
    export GIT_PS1_SHOWDIRTYSTATE=1
    export PS1='[\u@\h] \W$(__git_ps1 " (%s)") \$ '

    $ source $HOME/.bashrc
