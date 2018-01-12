!SLIDE smbullets
# Exclude files with .gitignore

* Do not track files in your Git repository
* Files already tracked by Git are not affected
* Examples
 * Build directories from source code compilation
 * Files generated at runtime (e.g. test results or stats)

~~~SECTION:handouts~~~

****

You can use wildcard pattern matches for files.
If you'll end the string with a '/' git will only
ignore directories instead of both directories and files
matching the pattern.

If you want to ignore a file globally in your repository
you can preceed the path with `**/` which means `any directory`.

Example for ignoring a debug file anywhere in your repository:

    **/debug

If you prefer to keep `.gitignore` files in specific directories
and not a global file, this will also work.

~~~ENDSECTION~~~


!SLIDE smbullets
# Lab ~~~SECTION:MAJOR~~~.~~~SECTION:MINOR~~~: Add .gitignore file and exclude files/directories

* Objective:
 * Add .gitignore file and exclude files/directories
* Steps:
 * Create a file `generated.tmp`
 * Create a directory `debug` with the file `.timestamp`
 * Examine the state with `git status`
 * Exclude them in a .gitignore file
 * Examine the state with `git status`

~~~SECTION:handouts~~~

****

~~~ENDSECTION~~~

!SLIDE supplemental exercises
# Lab ~~~SECTION:MAJOR~~~.~~~SECTION:MINOR~~~: Add .gitignore file and exclude files/directories

## Objective: Examine current changes
****

* Add .gitignore file and exclude files/directories

## Steps:

* Create a file `generated.tmp`
* Create a directory `debug` with the file `.timestamp`
* Examine the state with `git status`
* Exclude them in a .gitignore file
* Examine the state with `git status`

!SLIDE supplemental solutions
# Lab ~~~SECTION:MAJOR~~~.~~~SECTION:MINOR~~~: Proposed Solution
****

## Add .gitignore file and exclude files/directories

****

### Add file/directory

    @@@ Sh
    $ echo "temporary" > generated.tmp
    $ mkdir debug
    $ touch debug/.timestamp

### Examine the state with git status

    @@@ Sh
    $ git status
    On branch master
    
    Untracked files:
      (use "git add <file>..." to include in what will be committed)
    
           	debug/
           	generated.tmp

### Add .gitignore file

    @@@ Sh
    $ vim .gitignore
    *.tmp
    debug/

Files matching the `*.tmp` pattern in the current directory
will be excluded. Furthermore the `debug` directory (note the
trailing slash).

### Examine the state with git status

    @@@ Sh
    $ git status
    On branch master
    
    Untracked files:
      (use "git add <file>..." to include in what will be committed)
    
           	.gitignore


We'll learn how to add and commit the untracked `.gitignore` file
in later examples.

