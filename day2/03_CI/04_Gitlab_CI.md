!SLIDE smbullets
# Continuous Integration: GitLab CI

* Build Pipelines
* Natively integrated into GitLab
* Invokes GitLab Runners
* Local container registry for runners


~~~SECTION:handouts~~~

****

Reference example (German): https://blog.netways.de/2017/05/03/gitlab-ce-continuous-integration-jobs-and-runners/

~~~ENDSECTION~~~

!SLIDE smbullets
# GitLab CI: Introduction

* `.gitlab-ci.yml` configuration file in Git repository
* Runner is triggered on specific events, e.g. `git push`
* Built-in and external runners
* Container registry enabled for the project (optional)


~~~SECTION:handouts~~~

****

Documentation references:

https://docs.gitlab.com/ce/user/project/container_registry.html

~~~ENDSECTION~~~


!SLIDE smbullets
# GitLab Runners

* Written in Go
* Linux/Unix, macOS, Windows, Docker support
* Run multiple jobs in parallel
* Run jobs locally, in Docker containers, remote via SSH
* Can run Bash, Windows Batch/Powershell


~~~SECTION:handouts~~~

****

Documentation reference: https://docs.gitlab.com/runner/

~~~ENDSECTION~~~


!SLIDE smbullets
# GitLab Runners: Installation and Configuration

* Separate server
* Installation via package repository
* `gitlab-runner register`

Note: This is not needed for the built-in `docker executor` runner.

~~~SECTION:handouts~~~

****

Documentation References:

https://docs.gitlab.com/runner/install/linux-repository.html
https://docs.gitlab.com/runner/register/index.html

~~~ENDSECTION~~~


!SLIDE smbullets
# GitLab CI: Container Registry

* Enable the Container Registry (administration server setting)
* Enable the Container Registry for the project


~~~SECTION:handouts~~~

****

```
# vim /etc/gitlab/gitlab.rb

registry_external_url 'https://gitlab.example.com:5000'

# gitlab-ctl reconfigure
```

Documentation References:

https://docs.gitlab.com/ce/user/project/container_registry.html
https://docs.gitlab.com/ce/administration/container_registry.html
~~~ENDSECTION~~~


