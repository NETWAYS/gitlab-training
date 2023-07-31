# Linux Cheatsheet (Deutsch)

## Allgemein

* Absolute Pfade fangen bei `/` an: `cd /usr/share/local`
* Relative Pfade fangen im aktuellen Ordner an: `cd share/local`
* Manpages geben Hilfe zu Befehlen: `man <Befehl>`

## Navigation

| Beschreibung | Befehl |
|---|---|
| Terminal leeren | `clear` |
| Pfad des aktuellen Ordners anzeigen | `pwd` |
| In einen Ordner wechseln | `cd <Pfad zum Ordner>` |
| Inhalte auflisten | `ls -l <Pfad zum Ordner>` |

## Datei/Ordner Verwaltung

| Beschreibung | Befehl |
|---|---|
| Ordner erstellen | `mkdir <Pfad zum Ordner>` |
| Ordner löschen | `rmdir <Pfad zum Ordner>` |
| Ordner rekursiv löschen | `rm -ri <Pfad zum Ordner>` |
| Datei löschen | `rm <Pfad zur Datei>` |
| Datei kopieren | `cp <Quelle> <Ziel>` |
| Dateien kopieren | `cp <Pfad zu Dateien> <Pfad zum Ordner>` |
| Ordner kopieren | `cp -r <Quelle> <Ziel>` |
| Datei verschieben (oder umbenennen) | `mv <Quelle> <Ziel>` |
| Zugriffsrechte anpassen | `chmod u=rwx,g=rx,o=r <Target>` |
| Besitzer anpassen | `chown username:groupname <Target>` |

## Datei Bearbeitung

| Beschreibung | Befehl |
|---|---|
| Inhalte von einer oder mehreren Dateien auflisten | `cat <Pfad zur Datei>` |
| Datei anzeigen | `less <Pfad zur Datei>` |
| Datei in nano editieren | `nano <Pfad zur Datei>` |
| Datei in VIM editieren | `vim <Pfad zur Datei>` |
| Datei ausführen | `source <Pfad zur Datei>` |

## Software Management

| Beschreibung | Befehl |
|---|---|
| Paket installieren (Debian) | `apt install <Paket>` |
| Paket installieren (EL) | `dnf install <Paket>` |
| TarBall entpacken | `tar [-j] [-z] xf <Pfad zur Datei>` |
| Datei herunterladen | `wget <HTTP Pfad>` |
| HTTP Endpunkt ansprechen | `curl -X GET <HTTP Pfad>` |
| Regulären Ausdruck in Datei suchen | `grep <regulärer Ausdruck> <Pfad zur Datei>` |
| Regulären Ausdruck in Ordner suchen | `grep -r <regulärer Ausdruck> <Pfad zur Datei>` |
