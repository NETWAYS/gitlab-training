!SLIDE subsection
# ~~~SECTION:MAJOR~~~ Git Introduction

!SLIDE smbullets
# Version Control

* Version Control System (VCS)
* Record changes of file(s)
* Revert changes
* Compare changes over time
* Who, when, what

~~~SECTION:handouts~~~

****

The most simple version control system is to copy
directories and add a suffix like the last date it
worked. Though this might cause trouble when you're
in the wrong directory. Afterall it pollutes your
filesystem structure over time.

Long time ago developers invented version control
systems which store the file revisions in a database.


~~~ENDSECTION~~~


!SLIDE smbullets
# Centralized VCS

* Multiple computers required file revisions
* CVS, Subversion
* What happens if the server is down?

<center><img src="../../_images/mermaid/central-vcs.mmd.png" alt="Central VCS"/></center>


~~~SECTION:handouts~~~

****


~~~ENDSECTION~~~


!SLIDE smbullets
# Distributed VCS

* Clients mirror the repository
* Git, Mercurial, Bazaar, etc.
* Server dies, client continues

<center><img src="../../_images/mermaid/decentral-vcs.mmd.png" alt="Decentral VCS"/></center>

~~~SECTION:handouts~~~

****


~~~ENDSECTION~~~


