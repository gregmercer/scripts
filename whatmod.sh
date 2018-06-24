#!/bin/bash

# find all find modified in last 2400 (60*24 = 1 day) minutes

read -e -p "Enter the number of minutes [2400]: " MODMINUTES

# If nothing is specified then use 2400
if [ ! -n "$MODMINUTES" ]; then
  MODMINUTES=2400
fi

# can't see to get it to sort by modification time using -t

find . -type f -mmin -$MODMINUTES \( -not -iname ".DS_Store" -and -not -path "./.idea/*" -and -not -path "*/.git/*" \) -exec ls -lt {} \;

# this didn't seem to work either

# find . -mmin -50 -ls | sort -M -k10
