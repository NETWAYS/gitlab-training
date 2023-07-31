# Linux Cheatsheet (English)

## General

* Absolute paths start from `/`: `cd /usr/share/local`
* Relative paths start from the current directory: `cd share/local`
* Manpages can be used to get help on a command: `man <command>`

## Navigation

| Description | Command |
|---|---|
| Clear terminal | `clear` |
| Show path of the current directory | `pwd` |
| Change into a directory | `cd <Path to directory>` |
| List a directory | `ls -l <Path to directory>` |

## File/Directory Management

| Description | Command |
|---|---|
| Create directory | `mkdir <Path to directory>` |
| Remove empty directory | `rmdir <Path to directory>` |
| Remove directory | `rm -ri <Path to directory>` |
| Remove file | `rm <Path to file>` |
| Copy file | `cp <Source> <Target>` |
| Copy multiple files | `cp <Source Files> <Target Directory>` |
| Copy directory | `cp -r <Source> <Target>` |
| Move or rename file | `mv <Source> <Target>` |
| Change permissions | `chmod u=rwx,g=rx,o=r <Target>` |
| Change ownership | `chown username:groupname <Target>` |

## File Editing

| Description | Command |
|---|---|
| Display the contents of files | `cat <Path to file>` |
| Read a file | `less <Path to file>` |
| Open a file with nano | `nano <Path to file>` |
| Open a file with VIM | `vim <Path to file>` |
| Execute a file | `source <Path to file>` |

## Software Management

| Description | Command |
|---|---|
| Install packages (Debian) | `apt install <package>` |
| Install packages (EL) | `dnf install <package>` |
| Extract tarball | `tar [-j] [-z] xf <Path to file>` |
| Download file | `wget <HTTP path>` |
| Talk to HTTP endpoint | `curl -X GET <HTTP path>` |
| Search for regular expression in file | `grep <regular expression> <Path to file>` |
| Search for regular expression in directory | `grep -r <regular expression> <Path to file>` |
