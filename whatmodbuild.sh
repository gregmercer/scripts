#!/bin/bash

# find all find modified after the builddone.txt marker file

read -e -p "Enter name of marker file [builddone.txt]: " MARKERFILE

# If nothing is specified then use 2400
if [ ! -n "$MARKERFILE" ]; then
  MARKERFILE="builddone.txt"
fi

find . -type f -newer $MARKERFILE \( -not -iname ".DS_Store" -and -not -path "./.idea/*" -and -not -path "*/.git/*" \) -exec ls -lt {} \;


