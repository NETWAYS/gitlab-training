#!/bin/bash

# should be called inside print.sh

showoff static supplemental exercises
wkhtmltopdf -s A5 --print-media-type --footer-left [page] --footer-right '© NETWAYS' static/index.html gitlab-training-exercises.pdf
showoff static supplemental solutions
wkhtmltopdf -s A5 --print-media-type --footer-left [page] --footer-right '© NETWAYS' static/index.html gitlab-training-solutions.pdf

# Generate handouts and also refresh static content for GH
showoff static print
wkhtmltopdf -s A5 --print-media-type --footer-left [page] --footer-right '© NETWAYS' static/index.html gitlab-training-handouts.pdf
