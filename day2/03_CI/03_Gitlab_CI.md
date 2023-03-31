!SLIDE smbullets
# GitLab CI

GitLab offers a natively integrated CI solution.

Offers automated jobs that are bundled in a Pipeline.

Example:

    Clone Code => Test => Build => Deploy

These job are executed on GitLab Runners.

~~~SECTION:handouts~~~

****

References:

https://docs.gitlab.com/ce/ci/README.html

https://blog.netways.de/2017/05/03/gitlab-ce-continuous-integration-jobs-and-runners/  (German)

~~~ENDSECTION~~~

!SLIDE
# GitLab Runners

GitLab Runner is an application that works with GitLab CI to run jobs in a pipeline.

* Written in Go (available for Linux/Unix, macOS, Windows)
* They can run multiple jobs in parallel
* They can run jobs locally, remote via SSH or in Containers
* Can run Bash, Windows Batch/Powershell

We can have multiple Runners (Instance, Group, Project).

Example:

    # From the GitLab Repository
    yum install -y gitlab-runner
    gitlab-runner register

~~~SECTION:handouts~~~

****

References:

https://docs.gitlab.com/runner/install/linux-repository.html

https://docs.gitlab.com/runner/register/index.html

~~~ENDSECTION~~~

!SLIDE smbullets
# GitLab CI Configuration

The CI is configured by the `.gitlab-ci.yml` in our Git repository

* Jobs are triggered on specific events, e.g. `git push`
* Jobs can run on-demand
* Jobs can run on different built-in and external runners

We will be using Containers to run our jobs.

!SLIDE smbullets
# GitLab CI Containers

Containers are an isolated environment for execution.

* Created from Images that provide preinstalled libraries and tools (i.e. Python)
* They are light-weight and fast and can run on each Git push
* For each job we start a container, run tests, return the results
* Reproducible jobs since they are removed once the job is done

!SLIDE smbullets noprint
# GitLab CI Containers and CI Runners

<center><img src="../../_images/ci/git_gitlab_ci_runners_docker.png" alt="GitLab CI Runners Docker"/></center>

!SLIDE smbullets printonly
# GitLab CI Containers and CI Runners

<center><img src="../../_images/ci/git_gitlab_ci_runners_docker.png" style="width:450px" alt="GitLab CI Runners Docker"/></center>

~~~SECTION:handouts~~~

****

References:

https://docs.docker.com

https://podman.io/

https://docs.gitlab.com/runner/install/docker.html

~~~ENDSECTION~~~

!SLIDE smbullets
# Lab ~~~SECTION:MAJOR~~~.~~~SECTION:MINOR~~~: Inspect CI Runner settings

* Objective:
 * Inspect CI Runner Settings
* Steps:
 * Navigate to Admin > Overview > Runners
 * Inspect the token
 * Check existing runners

~~~SECTION:handouts~~~

****

Reference:

https://docs.gitlab.com/runner/install/

~~~ENDSECTION~~~

!SLIDE supplemental exercises
# Lab ~~~SECTION:MAJOR~~~.~~~SECTION:MINOR~~~: Inspect CI Runner settings

## Get CI Runner Token
****

* Use the GitLab Admin UI to inspect CI runners

## Steps:

* Navigate to Admin > Overview > Runners
* Inspect the token
* Check existing runners

Note: Runners can be defined per Instance, Group or Project.


!SLIDE supplemental solutions
# Lab ~~~SECTION:MAJOR~~~.~~~SECTION:MINOR~~~: Proposed Solution
****

## Open Runner Administration View

****

Navigate to `/admin/runners`.

```
How to setup a shared Runner for a new project
Install a Runner compatible with GitLab CI (checkout the GitLab Runner section for information on how to install it).
Specify the following URL during the Runner setup: ...
Use the following registration token during setup: ...
Start the Runner!
```

### Runners

Registered runners are listed at the bottom.

#### Register Runner

* Steps:
 * Run `gitlab-runner register` as root
 * Use the HTTP Url as host
 * Paste the token
 * Add description `training01` and tag `training`
 * Untagged builds: `true`, Lock to current project: `false`
 * Executor: `docker`, Default: `docker.io/alpine:latest`


Reference: https://gitlab.com/gitlab-org/gitlab-runner/blob/master/docs/install/linux-repository.md
Reference: https://docs.gitlab.com/runner/install/linux-repository.html

Reference for Docker: https://docs.docker.com/engine/installation/linux/docker-ce/ubuntu/

Example on Ubuntu:

```
apt-get install \
    apt-transport-https \
    ca-certificates \
    curl \
    software-properties-common

curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -

add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
   $(lsb_release -cs) \
   stable"

apt-get update
apt-get install docker-ce
```

```
curl -L https://packages.gitlab.com/install/repositories/runner/gitlab-runner/script.deb.sh | sudo bash
apt-get install gitlab-runner
```


Start CLI

    @@@ Sh
    # gitlab-runner register
    Running in system-mode.

    Please enter the gitlab-ci coordinator URL (e.g. https://gitlab.com/):
    http://192.168.56.101

    Please enter the gitlab-ci token for this runner:
    Do1aqTvPiiBj6_u_u5Ye

    Please enter the gitlab-ci description for this runner:
    [ubuntu-16]: training01

    Please enter the gitlab-ci tags for this runner (comma separated):
    training

    Whether to run untagged builds [true/false]:
    [false]: true

    Whether to lock the Runner to current project [true/false]:
    [true]: false
    Registering runner... succeeded                     runner=Do1aqTvP

    Please enter the executor: docker+machine, docker-ssh, parallels, ssh, virtualbox, docker, shell, docker-ssh+machine, kubernetes:
    docker

    Please enter the default Docker image (e.g. ruby:2.1):
    docker.io/alpine:latest

    Runner registered successfully. Feel free to start it, but if it's running already the config should be automatically reloaded!


!SLIDE smbullets
# GitLab CI .gitlab-ci.yml

In the .gitlab-ci.yml file, you can define:

* `image` as Container image in which the job runs
* `name_of_my_job` the name of the job
* `script` what should run in the job

Example:

    image: docker.io/alpine:latest

    name_of_my_job:
      script:
        - run-my-tests.sh

~~~SECTION:handouts~~~

****

References:

https://docs.gitlab.com/ee/ci/yaml/gitlab_ci_yaml.html

~~~ENDSECTION~~~

!SLIDE smbullets
# Lab ~~~SECTION:MAJOR~~~.~~~SECTION:MINOR~~~: Create the .gitlab-ci.yml

* Objective:
 * Create CI configuration for the training project
* Steps:
 * Create the `.gitlab-ci.yml` file in the `training` directory (Web IDE)
 * Add the following content to the file and commit

Example:

    image: docker.io/alpine:latest

    my_tests:
      script:
        - exit 1

!SLIDE supplemental exercises
# Lab ~~~SECTION:MAJOR~~~.~~~SECTION:MINOR~~~: Create the .gitlab-ci.yml

## Create CI configuration
****

* Create CI configuration file .gitlab-ci.yml

## Steps:

* Create the `.gitlab-ci.yml` file in the `training` directory (Web IDE)
* Add the following content to the file and commit

Example:

    image: docker.io/alpine:latest

    my_tests:
      script:
        - exit 1

!SLIDE supplemental solutions
# Lab ~~~SECTION:MAJOR~~~.~~~SECTION:MINOR~~~: Proposed Solution
****

## Create the .gitlab-ci.yml file

****

### Create CI configuration file

 * Navigate your GitLab Web interface and click the button 'Web IDE'
 * Click 'Add file' and create the `.gitlab-ci.yml` file from the suggestions

    @@@ Sh

    image: docker.io/alpine:latest
    my_tests:
      script:
        - exit 1

This is an example of how to do it from a CLI, the Gitlab WebIDE is an obvious alternative.
The script will always fail. We will use different exit states to fix it.
Future examples and tests work the same way.

!SLIDE smbullets
# Lab ~~~SECTION:MAJOR~~~.~~~SECTION:MINOR~~~: Explore and fix the job

* Objective:
 * Explore the failed job in GitLab
* Steps:
 * Navigate to the project into `CI / CD` and view the job
 * Explain the output
* Bonus
 * Modify the exit code to `0`, commit, push and verify again

!SLIDE supplemental exercises
# Lab ~~~SECTION:MAJOR~~~.~~~SECTION:MINOR~~~: Explore and fix the job

## Explore the failed job in GitLab
****

* Explore the failed job in GitLab

## Steps:

* Navigate to the project into `CI / CD` and view the job
* Explain the output

## Bonus:

* Modify the exit code to `0`, commit, push and verify again

!SLIDE supplemental solutions
# Lab ~~~SECTION:MAJOR~~~.~~~SECTION:MINOR~~~: Proposed Solution
****

## Explore and fix the failed job in GitLab
****

### Modify exit code

    @@@ Sh

    image: docker.io/alpine:latest

    all_tests:
      script:
        - exit 0

!SLIDE smbullets
# Lab ~~~SECTION:MAJOR~~~.~~~SECTION:MINOR~~~: Practical Example for CI Runners: Preparations

* Objectives:
 * Prepare container to convert Markdown to HTML
* Steps:
 * Modify `.gitlab-ci.yml` and add a `before_script` section after the `image` section
 * Update `apk` package manager and install `python3` and `py-pip` packages
 * Use `pip` to install the `markdown` and `Pygments` libraries
 * Commit the changes

Example:

    before_script:
      - apk update && apk add python3 py-pip
      - pip install markdown Pygments

~~~SECTION:handouts~~~

****

The base image uses Alpine Linux which has a very small installation size
and footprint.

In contrast to the "typical" Linux distribution containers, this allows for
faster tests and deployment scripts.

If your build pipeline involves specific distributions, choose the best and
reliable container distribution you prefer.

Alpine uses its own package manager. This exercise installs

* Python and its package manager `pip`
* Markdown conversion packages for Python

Reference: https://wiki.alpinelinux.org/wiki/Alpine_Linux_package_management

~~~ENDSECTION~~~

!SLIDE supplemental exercises
# Lab ~~~SECTION:MAJOR~~~.~~~SECTION:MINOR~~~: Practical Example for CI Runners: Preparations

## Prepare container to convert Markdown to HTML
****

* Prepare container to convert Markdown to HTML

## Steps:

* Modify `.gitlab-ci.yml` and add a `before_script` section after the `image` section
* Update `apk` package manager and install `python3` and `py-pip` packages
* Use `pip` to install the `markdown` and `Pygments` libraries
* Commit the changes

Example:

    before_script:
      - apk update && apk add python3 py-pip
      - pip install markdown Pygments

!SLIDE supplemental solutions
# Lab ~~~SECTION:MAJOR~~~.~~~SECTION:MINOR~~~: Proposed Solution
****

## Prepare container to convert Markdown to HTML

****

### Edit .gitlab-ci.yml and add before_script

    @@@ Sh

    image: docker.io/alpine:latest

    before_script:

### Update apk and install Python/pip

    @@@ Sh

    image: docker.io/alpine:latest

    before_script:
      - apk update && apk add python3 py-pip

### Install Markdown Python libraries

    @@@ Sh

    image: docker.io/alpine:latest

    before_script:
      - apk update && apk add python3 py-pip
      - pip install markdown Pygments

### Verify the content

    @@@ Sh

    image: docker.io/alpine:latest

    before_script:
      - apk update && apk add python3 py-pip
      - pip install markdown Pygments

    all_tests:
      script:
        - exit 0

### Commit and push the changes

    @@@ Sh
    $ git commit -av -m "CI: Prepare markdown conversion"
    $ git push

This is an example of how to do it from a CLI, the Gitlab WebIDE is an obvious alternative.

!SLIDE smbullets
# Lab ~~~SECTION:MAJOR~~~.~~~SECTION:MINOR~~~: Practical Example for CI Runners: Linting

* Objective:
 * Validate the Markdown in the README.md
* Steps:
 * Modify the `my_tests` job to validate the Markdown in the README.md
 * Commit the changes

Example:

    my_tests:
      script:
        - pymarkdownlint scan README.md
      allow_failure: true

!SLIDE supplemental exercises
# Lab ~~~SECTION:MAJOR~~~.~~~SECTION:MINOR~~~: Practical Example for CI Runners: Linting

## Validate the Markdown in the README.md
****

* Validate the Markdown in the README.md

## Steps:

* Modify the `my_tests` job to validate the Markdown in the README.md
* Commit the changes

Example:

    my_tests:
      script:
        - pymarkdownlint scan README.md
      allow_failure: true

!SLIDE supplemental solutions
# Lab ~~~SECTION:MAJOR~~~.~~~SECTION:MINOR~~~: Proposed Solution
****

## Validate the Markdown in the README.md

****

### Edit .gitlab-ci.yml and modify the job

    @@@ Sh

    my_tests:
      script:
        - pymarkdownlint scan README.md
      allow_failure: true

!SLIDE smbullets
# Lab ~~~SECTION:MAJOR~~~.~~~SECTION:MINOR~~~: Practical Example for CI Runners: Create HTML

* Objective:
 * Create HTML docs from Markdown
* Steps:
 * Add a new job and use `script` to generate `README.html`
 * Add `artifacts` with `paths` pointing to `README.html`
 * Commit the changes, then download and view the `README.html` file in your browser

Example:

    markdown:
      script:
        - python3 -m markdown README.md > README.html
      artifacts:
        paths:
        - README.html
        expire_in: 1 week

!SLIDE supplemental exercises
# Lab ~~~SECTION:MAJOR~~~.~~~SECTION:MINOR~~~: Practical Example for CI Runners: Create HTML

## Create HTML docs from Markdown
****

* Create HTML docs from Markdown

## Steps:

* Add a new job `markdown` after the `all_tests` job
* Add `script` and convert `README.md` to `README.html` using Python
* Add `artifacts` with `paths` pointing to `README.html`. Expires in `1 week`
* Commit the changes
* Download and view the `README.html` file in your browser

!SLIDE supplemental solutions
# Lab ~~~SECTION:MAJOR~~~.~~~SECTION:MINOR~~~: Proposed Solution
****

## Create HTML docs from Markdown

****

### Edit .gitlab-ci.yml and add markdown section

    @@@ Sh

    ...

    all_tests:
      script:
        - exit 0

    markdown:

### Add script to convert Markdown into HTML

    @@@ Sh

    ...

    markdown:
      script:
        - python3 -m markdown README.md > README.html

### Store artifacts

Add `paths` section which includes `README.html` as entry.
Tell GitLab to expire this artifact in `1 week`.

    @@@ Sh

    ...

    markdown:
      script:
        - python3 -m markdown README.md > README.html
      artifacts:
        paths:
        - README.html
        expire_in: 1 week

### Verify the content

    @@@ Sh

    image: docker.io/alpine:latest

    before_script:
      - apk update && apk add python3 py-pip
      - pip install markdown Pygments

    all_tests:
      script:
        - exit 0

    markdown:
      - python3 -m markdown README.md > README.html
      artifacts:
        paths:
        - README.html
        expire_in: 1 week

### Download HTML artifacts

Navigate into the repository > `CI / CD` > Jobs > `#...`  and choose `Job Artifacts`.
Download them, extract them and open the HTML file with your browser.
This is an example of how to do it from a CLI, the Gitlab WebIDE is an obvious alternative.

!SLIDE smbullets small
# Lab ~~~SECTION:MAJOR~~~.~~~SECTION:MINOR~~~: Practical Example for CI Runners: Update HTML

* Objective:
 * Add what you have learned so far into README.md and generate docs
* Steps:
 * Edit `README.md`
 * Commit changes
 * Download and view the `README.html` file in your browser

!SLIDE supplemental exercises
# Lab ~~~SECTION:MAJOR~~~.~~~SECTION:MINOR~~~: Practical Example for CI Runners: Update HTML

## Update docs
****

* Add what you have learned so far into README.md and generate docs

## Steps:

* Edit `README.md`
* Commit changes
* Download and view the `README.html` file in your browser

!SLIDE supplemental solutions
# Lab ~~~SECTION:MAJOR~~~.~~~SECTION:MINOR~~~: Proposed Solution
****

## Update docs

****

### Edit README.md and add learned details

    @@@ Sh

    # CI Runners

    ....

### Download HTML artifacts

Navigate into the repository > `CI / CD` > Jobs > `#...`  and choose `Job Artifacts`.
Download them, extract them and open the HTML file with your browser.
This is an example of how to do it from a CLI, the Gitlab WebIDE is an obvious alternative.

!SLIDE
# GitLab CI .gitlab-ci.yml Templates

GitLab offers various templates for the .gitlab-ci.yml.

 * PHP
 * C++
 * Go
 * Python

Examples:

* https://gitlab.com/gitlab-org/gitlab-ce/tree/master/lib/gitlab/ci/templates

Templates can make use of variables.

~~~ENDSECTION~~~

!SLIDE
# GitLab CI Variables

CI Variables are environment variables that are  accessible in the job.

 * Pre-defined environment variables (by GitLab)
 * User-defined project variables
 * .gitlab-ci.yml defined variables

Example:

    job1:
      script:
      - echo "Job for the Commit: '$CI_COMMIT_SHA'"

Usecases: Credentials (`AWS_ACCESS_KEY`) or controlling builds (`CMAKE_C_FLAGS`).
