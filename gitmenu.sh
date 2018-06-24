#!/bin/bash

# clears the screen 
clear

# define options as array
declare -a options

# set first empty position with new value
options[${#options[*]}]="status - does a git status                                     ";
options[${#options[*]}]="new branch - create a new branch";
options[${#options[*]}]="delete branch - delete a branch";
options[${#options[*]}]="new tag - create a tag";
options[${#options[*]}]="delete tag - delete a tag";
options[${#options[*]}]="diff all staged - diff all staged changes";
options[${#options[*]}]="unstage file - unstage a file";
options[${#options[*]}]="drop file - drop changes to a file";
options[${#options[*]}]="quit";

# expand to quoted elements:
select opt in "${options[@]}"; do
  case ${opt} in
  ${options[0]}) sh /Users/macgmercer/Scripts/gitstat.sh; break; ;;
  ${options[1]}) sh /Users/macgmercer/Scripts/gitnewbranch.sh; break; ;;
  ${options[2]}) sh /Users/macgmercer/Scripts/gitdelbranch.sh; break; ;;
  ${options[3]}) sh /Users/macgmercer/Scripts/gitnewtag.sh; break; ;;
  ${options[4]}) sh /Users/macgmercer/Scripts/gitdeltag.sh; break; ;;
  ${options[5]}) sh /Users/macgmercer/Scripts/gitdiffstaged.sh; break; ;;
  ${options[6]}) sh /Users/macgmercer/Scripts/gitunstage.sh; break; ;;
  ${options[7]}) sh /Users/macgmercer/Scripts/gitdropfile.sh; break; ;;
  (quit) break; ;;
  (*) echo "${opt}"; ;;
  esac;
done