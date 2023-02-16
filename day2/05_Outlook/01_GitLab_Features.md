!SLIDE subsection
# ~~~SECTION:MAJOR~~~ Further GitLab Features

!SLIDE smbullets
# Project Issue Boards

The issue board is a software project management tool used to plan, organize, and visualize a workflow for a feature or product release.

* Kanban or Scrum board
* Filter by labels
* Drag & drop issues

~~~ENDSECTION~~~

!SLIDE smbullets
# Project Snippets

With GitLab snippets, you can store and share bits of code and text with other users.

* Snippet visibility can differ from the project's visibility
* Are version controlled and have syntax highlighting
* URL is stable and can be shared

Example use cases:

* Guides for less code-savvy people
* Documentation for hard to automate but regular tasks

~~~ENDSECTION~~~

!SLIDE smbullets
# Project Wiki

Every wiki is a separate Git repository, within the project.

* Support Markdown, Rdoc, AsciiDoc, and Org for content
* Hierarchical links possible
* Mermaid diagrams and charts can be included

Example use cases:

* Additional documentation for the project

~~~ENDSECTION~~~

!SLIDE smbullets
# Container and Package Registry

Every GitLab project can have its own space to store Container Images and Packages.

* Image naming convention: `<registry URL>/<namespace>/<project>/<image>`
  * `git.example.com/mynamespace/myproject:some-tag`
* Package registry for a variety of supported package managers (npm, pypi, Ruby gems, etc.)

Example use cases:

* Store artifacts (Images/Packages) right next to the code
* Independent and interal registry without download rate limits

~~~ENDSECTION~~~
