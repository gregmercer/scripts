#!/bin/bash

echo -n "Branch Name: "
read -e BRANCH
git tag -d $BRANCH
git push origin --delete $BRANCH

