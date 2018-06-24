#!/bin/bash

echo -n "File Name: "
read -e FILE

git format-patch master --stdout > $FILE


