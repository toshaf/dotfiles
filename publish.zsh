#!/usr/bin/env zsh

dname=$0:a:h

skipped=0

for fname in $dname/src/*; do
	lname=~/.$(basename $fname)
	if [ -f $lname ]; then
		echo skipping $lname
		skipped=$((skipped + 1))
		continue
	fi
	echo publishing $lname
	ln -s $fname $lname 
done

exit $skipped
