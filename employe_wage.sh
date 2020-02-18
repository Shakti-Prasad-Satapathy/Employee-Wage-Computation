#!/bin/bash -x
wage_per_hour=20
one_day_working_hour=8
randomcheck=$((RANDOM%3));
if [ $randomcheck == 1 ]
then
	echo Present
	echo Emp_type : Full_time
	daily_wage=$((wage_per_hour * one_day_working_hour ))
	echo daily_wage : $daily_wage
elif [ $randomcheck == 2 ]
then
	one_day_working_hour=4
	echo Present
	echo Emp_type : Part_time
   daily_wage=$((wage_per_hour * one_day_working_hour ))
   echo daily_wage : $daily_wage
else
	echo Absent
   echo daily_wage : 0
fi

case $randomcheck in 
   1)
      echo Present
   	echo Emp_type : Full_time
   	daily_wage=$((wage_per_hour * one_day_working_hour ))
   	echo daily_wage : $daily_wage
		;;
   2)
		one_day_working_hour=4
   	echo Present
	   echo Emp_type : Part_time
   	daily_wage=$((wage_per_hour * one_day_working_hour ))
	   echo daily_wage : $daily_wage
		;;
	*)
		echo Absent
   	echo daily_wage : 0
		;;
esac
