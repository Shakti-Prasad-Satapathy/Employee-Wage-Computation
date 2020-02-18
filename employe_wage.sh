#!/bin/bash -x
wage_per_hour=20
one_day_working_hour=8
randomcheck=$((RANDOM%2));
if [ $randomcheck == 1 ]
then
	echo Present
	daily_wage=$((wage_per_hour * one_day_working_hour ))
	echo daily_wage : $daily_wage
else
	echo Absent
	echo daily_wage : 0
fi
