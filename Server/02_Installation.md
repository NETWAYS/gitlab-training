!SLIDE smbullets
# Git Server Installation

The following exercises will guide you to install
your own minimal Git server with SSH read/write access.

This is required for the next chapters with
collaboration and workflows.

~~~SECTION:handouts~~~

****

~~~ENDSECTION~~~


!SLIDE smbullets
# Lab ~~~SECTION:MAJOR~~~.~~~SECTION:MINOR~~~: Generate public SSH key

* Objective:
 * Generate public SSH key
* Steps:
 * Use `ssh-keygen` to generate an SSH key

~~~SECTION:handouts~~~

****

This key will be used to authorize against localhost's SSH server
in this training session.


~~~ENDSECTION~~~

!SLIDE supplemental exercises
# Lab ~~~SECTION:MAJOR~~~.~~~SECTION:MINOR~~~: Generate public SSH key

## Objective: Generate public SSH key
****

* Generate public SSH key

## Steps:

****

* Use `ssh-keygen` to generate an SSH key


!SLIDE supplemental solutions
# Lab ~~~SECTION:MAJOR~~~.~~~SECTION:MINOR~~~: Proposed Solution
****

## Generate public SSH key

****

### Example

    @@@ Sh
    $ ssh-keygen

!SLIDE smbullets
# Lab ~~~SECTION:MAJOR~~~.~~~SECTION:MINOR~~~: Add git user and add SSH key

* Objective:
 * Add git user and add SSH key
* Steps:
 * Use `adduser git`
 * Create `.ssh` directory in his home directory
 * Copy your generated SSH key into `/home/git/.ssh/authorized_keys`
* Bonus:
 * Restrict the git user to `git-shell`

~~~SECTION:handouts~~~

****

This key will be used to authorize against localhost's SSH server
in this training session.


~~~ENDSECTION~~~

!SLIDE supplemental exercises
# Lab ~~~SECTION:MAJOR~~~.~~~SECTION:MINOR~~~: Add git user and add SSH key

## Objective: Add git user and add SSH key
****

* Add git user and add SSH key

## Steps:

****

* Use `adduser git`
* Create `.ssh` directory in his home directory
* Copy your generated SSH key into `/home/git/.ssh/authorized_keys`

## Bonus:

****

* Restrict the git user to `git-shell`

!SLIDE supplemental solutions
# Lab ~~~SECTION:MAJOR~~~.~~~SECTION:MINOR~~~: Proposed Solution
****

## Add git user and add SSH key

****

### Add git user

    @@@ Sh
    $ sudo adduser git
    $ su git
    $ cd
    $ mkdir .ssh

### Add your SSH key to the git user

    @@@ Sh
    $ sudo cat $HOME/.ssh/id_rsa.pub >> /home/git/.ssh/authorized_keys

### Test the connection

   @@@ Sh
   ssh git@localhost

### Restrict the git user shell

   @@@ Sh
   $ sudo vim /etc/passwd
   
   git:x:1000:1000::/home/git:/usr/bin/git-shell

Note: Run `which git-shell` to determine the correct path.



!SLIDE smbullets
# Lab ~~~SECTION:MAJOR~~~.~~~SECTION:MINOR~~~: Create a new repository on the Git Server

* Objective:
 * Create a new repository on the Git Server
* Steps:
 * Create a new repository called `training.git` in `/opt/git`
 * Initialize a bare repository

~~~SECTION:handouts~~~

****

~~~ENDSECTION~~~

!SLIDE supplemental exercises
# Lab ~~~SECTION:MAJOR~~~.~~~SECTION:MINOR~~~: Create a new repository on the Git Server

## Objective: Create a new repository on the Git Server
****

* Create a new repository on the Git Server

## Steps:

****

* Create a new repository called `training.git` in `/opt/git`
* Initialize a bare repository

!SLIDE supplemental solutions
# Lab ~~~SECTION:MAJOR~~~.~~~SECTION:MINOR~~~: Proposed Solution
****

## Create a new repository on the Git Server

****

### Create the directory

    @@@ Sh
    $ mkdir -p /opt/git && cd /opt/git
    $ mkdir training.git

### Initialize the bare Git repository

    @@@ Sh
    $ cd training.git
    $ git --bare init


!SLIDE smbullets
# Lab ~~~SECTION:MAJOR~~~.~~~SECTION:MINOR~~~: Add the repository as remote origin

* Objective:
 * Use your local repository and add the `training.git` remote origin
* Steps
 * Navigate into your local repository
 * Use `git remote add origin git@localhost:/opt/git/training.git` to add the origin
 * Push your local history to `origin master`

~~~SECTION:handouts~~~

****


~~~ENDSECTION~~~

!SLIDE supplemental exercises
# Lab ~~~SECTION:MAJOR~~~.~~~SECTION:MINOR~~~: Add the repository as remote origin

## Objective: Add the repository as remote origin
****

* Add the repository as remote origin

## Steps:

****

* Navigate into your local repository
* Use `git remote add origin git@localhost:/opt/git/training.git` to add the origin
* Push your local history to `origin master`


!SLIDE supplemental solutions
# Lab ~~~SECTION:MAJOR~~~.~~~SECTION:MINOR~~~: Proposed Solution
****

## Add the repository as remote origin

****

### Add the remote origin

    @@@ Sh
    $ cd $HOME/training.git
    $ git remote add origin git@localhost:/opt/git/training.git

### Push the history

    @@@ Sh
    $ git push origin master

