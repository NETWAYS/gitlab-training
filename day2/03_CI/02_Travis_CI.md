!SLIDE smbullets
# Travis CI

* Cloud based CI system
* Code and unit tests
* Test multiple PHP, Perl, etc. versions at once
* Easy to integrate into GitHub projects

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
      - main

    script:
      - php phpunit.phar -c modules/test/phpunit.xml --verbose

~~~SECTION:handouts~~~

****


~~~ENDSECTION~~~

