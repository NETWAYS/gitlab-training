

# Docker Container

    ./start-showoff.sh


## Build Static HTML

    docker exec -ti showoff bash

    showoff static print

or
    showoff static supplemental exercises
    showoff static supplemental solutions

## Convert HTML to PDF

On MacOS:

    brew cask install wkhtmltopdf

    wkhtmltopdf -s A5 --print-media-type --footer-left [page] --footer-right '© NETWAYS' static/index.html git.pdf
    open git.pdf
