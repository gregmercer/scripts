#!/bin/bash

#
# Before running script change the since and before dates
#
# Run the script from your sites folder (for example: ~/Sites/gsb2/profiles/gsb_public/modules/custom )
#
#

since_date=2017-05-01
before_date=2018-05-11

author_name=gmercer@stanford.edu

#
# Run thru all the directories except - 'features' and 'modules'
#

dirlist=()

for f in *; do
    if [ -d ${f} ]; then
        # Will not run if no directories are available
        dirlist+=($f)
    fi
done

for i in "${dirlist[@]}"
do
	cd $i
	if [ $i == 'features' ] 
	then
		# do nothing
		cd ..
		continue
	fi  
	if [ $i == 'modules' ] 
	then
		# do nothing
		cd ..
		continue
	fi  
	echo $i
	git log --pretty="%ad > %h - %s" --author=$author_name --date=format:'%Y-%m-%d' --since=$since_date --before=$before_date --no-merges
	echo ' '
	cd ..
done

#
# Now, run thru the list of directories under 'features'
#

cd features

dirlist=()

for f in *; do
    if [ -d ${f} ]; then
        # Will not run if no directories are available
        dirlist+=($f)
    fi
done

for i in "${dirlist[@]}"
do
	cd $i
	echo $i
	git log --pretty="%ad > %h - %s" --author=$author_name --date=format:'%Y-%m-%d' --since=$since_date --before=$before_date --no-merges
	echo ' '
	cd ..
done


