#!/bin/bash -x

randomcheck=$((RANDOM%2));
if [ $randomcheck == 1 ]
then
	echo Present
else
	echo Absent
fi
