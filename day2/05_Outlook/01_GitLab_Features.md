!SLIDE subsection
# ~~~SECTION:MAJOR~~~ Further GitLab Features

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
