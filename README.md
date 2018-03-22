# GitLab Training

## Environment

The training material focuses on https://nws.netways.de where every attendee
gets their own GitLab instance.

The [vm/](vm/) directory provides a fallback VM which can be exported
from Vagrant/VirtualBox and is provisioned onto the training notebook @NETWAYS.

## Trainer Instructions

### Docker Container

```
./start-showoff.sh
```

#### Build Static HTML

```
docker exec -ti showoff bash
```

```
showoff static print

or

showoff static supplemental exercises
showoff static supplemental solutions
```

#### Convert HTML to PDF

On MacOS:

```
brew cask install wkhtmltopdf

wkhtmltopdf -s A5 --print-media-type --footer-left [page] --footer-right '© NETWAYS' static/index.html git.pdf
open git.pdf
```
