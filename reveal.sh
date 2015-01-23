#! /bin/bash -x
pandoc -t revealjs -s $1.md -o $1.html
