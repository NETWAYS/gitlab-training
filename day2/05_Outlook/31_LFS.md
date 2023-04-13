!SLIDE smbullets
# Git - Large File Storage (LFS)

Git LFS replaces large files (audio, videos, datasets, graphics) with text pointers.

* It is generally not recommended to store binary files in Git
* Git LFS is a plugin to overcome this shortcomming
* Requires a `.gitattributes` file for tracking files

Installation:

    @@@ Sh
    $ git lfs install

Usage:

    @@@ Sh
    $ git lfs track "*.<filetype>"
