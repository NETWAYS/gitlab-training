!SLIDE smbullets
# Travis CI

* Cloud based CI system
* Supports Ubuntu 14.04 LTS and macOS
* Code and unit tests
* Test multiple PHP, Perl, etc. versions at once
* Easy to integrate into GitHub projects
* De-facto standard for Open Source projects hosted on GitHub

~~~SECTION:handouts~~~

****


~~~ENDSECTION~~~



!SLIDE smbullets small
# Travis CI Example

    $ cat .travis.yml

    language: php

    php:
      - '7.1'

    branches:
      only:
      - master

    script:
      - php phpunit.phar -c modules/test/phpunit.xml --verbose

~~~SECTION:handouts~~~

****


~~~ENDSECTION~~~

