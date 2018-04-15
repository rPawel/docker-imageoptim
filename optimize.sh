#!/usr/bin/env bash
set -euo pipefail

function optimizeFile {

inFile=$1
infileExt=${inFile##*\.}
shopt -s nocasematch

case "$infileExt" in
        png) /usr/bin/optipng -preserve -quiet "$inFile"
           ;;
        jpg) /usr/bin/jpegoptim --preserve-perms --preserve --strip-all --quiet "$inFile"
           ;;
        *) echo " $inFile : This should never happen" && exit 1
           ;;
esac
}

optimizeFile $1

