#!/bin/bash
echo
echo `find . -type f -iname \*.pyc -not -path "./.*"`
echo `find . -type d -name __pycache__ -not -path "./.*"`
echo
read -p "Delete these files (y/n)? " RESP
case "$RESP" in
    y|Y ) find . -type f -iname \*.pyc -not -path "./.*" -delete && find . -type d -name __pycache__ -not -path "./.*" -delete;;
    n|N ) echo "Exiting without deleting anything.";;
    * ) echo "invalid";;
esac
