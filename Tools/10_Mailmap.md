!SLIDE smbullets
# Mailmap and AUTHORS file

* Map multiple mail addresses to one author
* AUTHORS file for (OSS) projects

~~~SECTION:handouts~~~

****

A practical example can be seen in the Icinga 2 project:

https://github.com/Icinga/icinga2/blob/master/.mailmap
https://github.com/Icinga/icinga2/blob/master/AUTHORS

~~~ENDSECTION~~~


!SLIDE smbullets
# Lab ~~~SECTION:MAJOR~~~.~~~SECTION:MINOR~~~: Generate the AUTHORS file

* Objective:
 * Generate the AUTHORS file
* Steps:
 * Add an empty `.mailmap` file
 * Commit it as different author using `--author "Other name <other@mail.com>"`
 * Generate the AUTHORS file
* Next steps:
 * Add and commit the AUTHORS file

!SLIDE supplemental exercises
# Lab ~~~SECTION:MAJOR~~~.~~~SECTION:MINOR~~~: Generate the AUTHORS file

## Objective: Generate the AUTHORS file
****

* Configure your username and email address using Git CLI commands

## Steps:

****

* Add an empty `.mailmap` file
* Commit it as different author using `--author "Other name <other@mail.com>"`
* Generate the AUTHORS file
* Add and commit the AUTHORS file


!SLIDE supplemental solutions
# Lab ~~~SECTION:MAJOR~~~.~~~SECTION:MINOR~~~: Proposed Solution
****

## Generate the AUTHORS file

****

### Add empty .mailmap file and commit with a different author

    @@@ Sh
    $ touch .mailmap
    $ git add .mailmap
    $ git commit -v .mailmap --author "Other Name <other@email.com>"

### Generate the AUTHORS file

    @@@ Sh
    $ git log --use-mailmap | grep ^Author: | cut -f2- -d' ' | sort | uniq > AUTHORS

### Verification

    @@@ Sh
    $ less AUTHORS
    Michael Friedrich <michael.friedrich@netways.de>
    Other Name <other@email.com>

### Add and commit

    @@@ Sh
    $ git add AUTHORS
    $ git commit -v AUTHORS


!SLIDE smbullets
# Lab ~~~SECTION:MAJOR~~~.~~~SECTION:MINOR~~~: Update the mailmap file

* Objective:
 * Update the mailmap file
* Steps:
 * Modify the `.mailmap` file
 * Add your user name and email with the `other@email.com` alias
 * Generate the AUTHORS file again
* Next steps:
 * Verify the change


!SLIDE supplemental exercises
# Lab ~~~SECTION:MAJOR~~~.~~~SECTION:MINOR~~~: Update the mailmap file

## Objective: Update the mailmap file
****

* Update the .mailmap file and regenerate the AUTHORS file

## Steps:

****

* Modify the `.mailmap` file
* Add your user name and email with the `other@email.com` alias
* Generate the AUTHORS file again
* Verify the change


!SLIDE supplemental solutions
# Lab ~~~SECTION:MAJOR~~~.~~~SECTION:MINOR~~~: Proposed Solution
****

## Generate the AUTHORS file

****

### Modify the .mailmap file and add an alias

    @@@ Sh
    $ vim .mailmap

    Michael Friedrich <michael.friedrich@netways.de> <other@email.com>

### Generate the AUTHORS file

    @@@ Sh
    $ git log --use-mailmap | grep ^Author: | cut -f2- -d' ' | sort | uniq > AUTHORS

### Verification

    @@@ Sh
    $ less AUTHORS
    Michael Friedrich <michael.friedrich@netways.de>
