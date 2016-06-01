!SLIDE smbullets
# Jenkins Git Hook

* Trigger build jobs from git commits
* Start build jobs from specific branches (e.g. daily snapshots)


~~~SECTION:handouts~~~

****


~~~ENDSECTION~~~

!SLIDE smbullets
# Lab ~~~SECTION:MAJOR~~~.~~~SECTION:MINOR~~~: Add Jenkins Git Hook

* Objective:
 * Add Jenkins git hook
* Steps:
 * Modify/Add `post-receive` server-side git hook
 * Use cURL to manually trigger a job build using the Jenkins REST API

Example:

http://localhost:8080/job/{jenkins-job-name}/build

!SLIDE supplemental exercises
# Lab ~~~SECTION:MAJOR~~~.~~~SECTION:MINOR~~~: Add Jenkins Git Hook

## Objective: Add Jenkins Git Hook
****

* Add and test Jenkins Git Hook

## Steps:

****

* Modify/Add `post-receive` server-side git hook
* Use cURL to manually trigger a job build using the Jenkins REST API

Example:

http://localhost:8080/job/{jenkins-job-name}/build

!SLIDE supplemental solutions
# Lab ~~~SECTION:MAJOR~~~.~~~SECTION:MINOR~~~: Proposed Solution
****

## Add Jenkins Git Hook

****

### Become root and chdir to the jenkins project repository hooks directory

    @@@ Sh
    $ sudo -i
    $ cd /opt/git/{your-jenkins-repository-name}.git/hooks

### Edit post-receive file

    @@@ Sh
    $ vim post-receive

    #!/bin/bash

    echo "executing jenkins hook"

    curl -s http://localhost:8080/job/training/build

In case the Jenkins server requires authorization this must be passed
via `-u user:pass`. Newer versions of Jenkins also support authentication
using an API token.

### Make post-receive executable

    @@@ Sh
    $ chmod +x post-receive

### Change to your user and add, commit, push changes

    @@@ Sh
    $ whoami
    $ cd $HOME/{your-jenkins-repository-name}.git

    $ git commit ...

    $ git push

### Verify the Jenkins Job being built

Open your web browser and navigate to Jenkins job view.
