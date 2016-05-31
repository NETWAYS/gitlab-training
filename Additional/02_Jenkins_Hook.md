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
 * Provide/Generate an URL token for the Jenkins REST API
 * Use cURL to manually trigger a job build using the Jenkins REST API

!SLIDE supplemental exercises
# Lab ~~~SECTION:MAJOR~~~.~~~SECTION:MINOR~~~: Add Jenkins Git Hook

## Objective: Add Jenkins Git Hook
****

* Add and test Jenkins Git Hook

## Steps:

****

* Modify/Add `post-receive` server-side git hook
* Provide/Generate an URL token for the Jenkins REST API
* Use cURL to manually trigger a job build using the Jenkins REST API

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
    # oldref newref refname
    JENKINS_HOST="http://localhost"
    JENKINS_PORT=8080
    JENKINS_ENV="testing"
    JENKINS_USER="jenkins"
    JENKINS_API_TOKEN="your-jenkins-api-token-here"
    JENKINS_JOB="training"

    echo "executing post-receive hook"
    echo "environment=${ENVIRONMENT}"
    echo "user=${JENKINS_USER}"

    curl -u ${JENKINS_USER}:${JENKINS_API_TOKEN} \
      --data "delay=0sec&environment=${JENKINS_ENV}" \
      "${JENKINS_HOST}:${JENKINS_PORT}/job/${JENKINS_JOB/buildWithParameters}"


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
