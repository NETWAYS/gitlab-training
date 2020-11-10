!SLIDE smbullets
# Git Hooks

* Client or server-side scripts
* Conditional execution (update, post-receive, etc.)
* Integration with external tools
* Web hooks available in GitLab, GitHub, etc.

~~~SECTION:handouts~~~

****

* pre-commit
* pre-rebase
* post-checkout
* post-merge

~~~ENDSECTION~~~


!SLIDE smbullets
# Git Hooks: Use Cases

* Client Side
  * Preserve file modes

* Server Side
  * Deny non-fast-forward pushes
  * Check branch permissions
  * Notify external tools (Mail, IRC, Jenkins, etc.)

Note: Not available with GitLab CE.

~~~SECTION:handouts~~~

****

Overview

* pre-receive
* post-receive
* update

Server-side hooks receive the arguments through STDIN in the following
format:

    oldref newref refname

Example:

    aa453216d1b3e49e7f6f98441fa56946ddcd6a20 68f7abf4e6f922807889f52bc043ecd31b79f814 refs/heads/master

~~~ENDSECTION~~~


!SLIDE smbullets
# Web Hooks

* HTTP Callback
* Limit on event, e.g. push, merge, comment, etc.
* Integrate CI services
* Integrate external ticket systems
* Chat bot integration
  * Rocket.Chat
  * Slack

~~~SECTION:handouts~~~

****

Reference example (German): https://blog.netways.de/2016/06/29/gitlab-webhooks/

Travis CI does not integrate well with GitLab, they prefer GitHub.

# Jenkins

Jenkins builds with web books: https://github.com/jenkinsci/gitlab-plugin/wiki/Setup-Example

# Rocket.Chat

Rocket.Chat web hook integration: https://rocket.chat/docs/administrator-guides/integrations/gitlab/

# Slack

Official GitLab Slack integration: https://gitlab.com/gitlab-org/gitlab-ce/blob/master/doc/user/project/integrations/slack.md

# Try it out

Both Rocket.Chat and GitLab are available at NWS:

* https://nws.netways.de/products/gitlab-ce
* https://nws.netways.de/products/rocket-chat

~~~ENDSECTION~~~
