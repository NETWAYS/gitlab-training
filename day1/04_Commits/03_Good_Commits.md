!SLIDE smbullets
# Good Commits

* Selectively add changes for commit (do not commit everything)
 * `git add` for all changes in a file
 * `git add -p` for interactive selection of changes in a file
* `git commit <file1> <file2>`
* Enable the verbose mode `-v` to show the differences below the editor
 * Write a short summary based on the visible changes

~~~SECTION:handouts~~~

****


~~~ENDSECTION~~~

!SLIDE smbullets
# Commit Message Overview

* Pick a short telling subject (max. 80-120 characters)
* Add a new line
* Add a body text explaining the issue (max. 80-120 characters in a line)
* Optional: Add external reference markers, e.g. for ticket systems

Example:

    A short subject for the commit line
    <newline>
    Some body text explaining the issue.
    80-120 characters max width.
    <newline>
    refs #<ticketid>

~~~SECTION:handouts~~~

****


~~~ENDSECTION~~~

