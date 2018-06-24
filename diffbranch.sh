#!/bin/bash

if [ $# -lt 1 ]  # Must have command-line args to run script.
then
  echo 'diffbranch  - example use: diffbranch 2015'
  exit 1
fi

diff -iwr --brief --exclude=.svn /Users/macgmercer/svnacquia/branches/${1} /Users/macgmercer/svn_trunk


