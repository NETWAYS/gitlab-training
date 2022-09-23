!SLIDE smbullets
# Git Hooks

* Client or server-side scripts
* Conditional execution (update, post-receive, etc.)
* Possible use cases
  * Validate commit message or content (client-side)
  * Deny non-fast-forward pushes (server-side)
  * Check branch permissions (server-side)
  * Notify external tools (Mail, IRC, Jenkins, etc.)

~~~SECTION:handouts~~~

****

* Client-side hooks can be triggered at various times:
  * pre-commit
  * prepare-commit-msg, commit-msg
  * post-commit
  * pre-rebase
  * post-rewrite
  * ...

https://git-scm.com/book/en/v2/Customizing-Git-Git-Hooks

* Server-side hooks depend on the given server implementation

https://docs.gitlab.com/ee/administration/server_hooks.html

* There are also server-side web hooks that can be triggered

  * HTTP Callback
  * Limit on event, e.g. push, merge, comment, etc.
  * Integrate CI services or external ticket systems
  * Chat bot integration

****

Jenkins builds with web books: https://github.com/jenkinsci/gitlab-plugin/wiki/Setup-Example

Rocket.Chat web hook integration: https://rocket.chat/docs/administrator-guides/integrations/gitlab/

Official GitLab Slack integration: https://gitlab.com/gitlab-org/gitlab-ce/blob/master/doc/user/project/integrations/slack.md

## Try it out

Both Rocket.Chat and GitLab are available at NWS:

* https://nws.netways.de/products/gitlab-ce
* https://nws.netways.de/products/rocket-chat

~~~ENDSECTION~~~
