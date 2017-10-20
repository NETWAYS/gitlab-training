!SLIDE smbullets
# Git Hooks

* Client or server-side scripts
* Conditional execution (update, post-receive, etc.)
* Integration with external tools
* Web hooks available in GitLab, GitHub, etc.

~~~SECTION:handouts~~~

****


~~~ENDSECTION~~~


!SLIDE smbullets
# Client Hooks

* pre-commit
* pre-rebase
* post-checkout
* post-merge
* Useful to
 * Preserve file modes
 * Check code style/syntax

~~~SECTION:handouts~~~

****


~~~ENDSECTION~~~


!SLIDE smbullets
# Server-side Hooks

* pre-receive
 * Deny non-fast-forward pushes
* post-receive
 * After everything is updated
 * Notify external tools (Mail, IRC, Jenkins, etc.)
* update
 * Check branch permissions


~~~SECTION:handouts~~~

****

Server-side hooks receive the arguments through STDIN in the following
format:

    oldref newref refname

Example:

    aa453216d1b3e49e7f6f98441fa56946ddcd6a20 68f7abf4e6f922807889f52bc043ecd31b79f814 refs/heads/master

Example for a simple post-receive demo hook:

```
$ vim post-receive

#!/bin/bash
# oldref newref refname
read line
set -- $line

# print the commits between oldref and newref and count the lines
num=$(git log --pretty=oneline ${1}..${2}| wc -l)

echo "New ref name '${3}' created. Pushed ${num} commits. Old ref '${1}' to new ref '${2}'."
exit 0

$ chmod +x post-receive
```

Test on the client:

```
$ whoami
$ cd $HOME/training.git
$ echo "1" > hooktest
$ git add hooktest
$ git commit -av -m "1. hooktest"
$ echo "2" >> hooktest
$ git commit -av -m "2. hooktest"

$ git log
$ git push
...
remote: New ref name 'refs/heads/master' created. Pushed 2 commits. Old ref ... to new ref ... .
```


~~~ENDSECTION~~~


!SLIDE smbullets
# Web Hooks

* HTTP Callback
* Pluggable with test and deployment services
  * Travis CI
  * Jenkins

~~~SECTION:handouts~~~

****


~~~ENDSECTION~~~

!SLIDE smbullets
# GitLab Web Hooks


~~~SECTION:handouts~~~

****

Reference example (German): https://blog.netways.de/2016/06/29/gitlab-webhooks/

~~~ENDSECTION~~~
