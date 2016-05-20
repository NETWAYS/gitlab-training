!SLIDE smbullets
# Good Commits

* Selectively add changes for commit (do not commit everything)
 * `git add` for all changes in a file
 * `git add -p` for interactive selection of changes in a file
* `git commit <file1> <file2>`
* Enable the verbose mode `-v` for the commit diff while editing
* `git commit` uses the `EDITOR` environment variable to detect your preferred editor

~~~SECTION:handouts~~~

****


~~~ENDSECTION~~~

!SLIDE smbullets
# Commit Message Overview

* Pick a short telling subject (max. 80 characters)
* Add a new line
* Add a body text explaining the issue (max. 80 characters in a line)
* Optional: Add external reference markers, e.g. for ticket systems

~~~SECTION:handouts~~~

****


~~~ENDSECTION~~~

!SLIDE smbullets
# Commit Message Example

    A short subject for the commit line
    <newline>
    Some body text explaining the issue, fix or
    feature. 80 characters max width for better
    readability.
    <newline>
    refs #<ticketid>

~~~SECTION:handouts~~~

****


~~~ENDSECTION~~~
