#!/bin/sh

filesdir=$1
searchstr=$2


if [ $# -eq 2 ]; then

  if [ ! -d $filesdir ]; then
	echo "$filesdir is not a directory"
	exit 1
  fi
else
	echo "Usage: $0 path search"
	exit 1
fi



X=$(ls "$filesdir"|wc -l)
Y=$(grep -R $searchstr $filesdir/* | wc -l)


echo "The number of files are $X and the number of matching lines are $Y"