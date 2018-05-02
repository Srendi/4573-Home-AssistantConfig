#!/bin/bash

git add .
git add *
git status
if [[ -z $1 ]]; then
	echo -n "Enter the Description for the Change: " [Minor Update]
	read CHANGE_MSG
	git commit -m "${CHANGE_MSG}"
else
        git commit -m "$1"
fi
git push origin master

exit
