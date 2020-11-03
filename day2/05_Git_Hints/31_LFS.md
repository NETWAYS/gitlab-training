!SLIDE smbullets
# Git Large File Storage (LFS)

* Open source Git extension for versioning large files
* Replaces large files (audio, videos, datasets, graphics) with text pointers
* Requires a '.gitattributes' file for tracking files in your repository

Installation:

    @@@ Sh
    $ git lfs install

Usage:

    @@@ Sh
    $ git lfs track "*.<filetype>"

~~~SECTION:handouts~~~

****


~~~ENDSECTION~~~