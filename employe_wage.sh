#!/bin/bash -x
wage_per_hour=20
one_day_working_hour=8
attendence () {
    case $randomcheck in 
        1)
            echo Present
            echo Emp_type : Full_time
            daily_wage=$((wage_per_hour * one_day_working_hour ))
            echo daily_wage : $daily_wage
            total_full_time_work_time=$(( total_full_time_work_time + one_day_working_hour))
            ;;
        2)
                one_day_working_hour=4
            echo Present
            echo Emp_type : Part_time
            daily_wage=$((wage_per_hour * one_day_working_hour ))
            echo daily_wage : $daily_wage
            total_part_time_work_time=$(( total_part_time_work_time + one_day_working_hour))
            ;;
        *)
            echo Absent
        echo daily_wage : 0
            ;;
    esac
}
while [[ $total_emp_work -lt 100 && $total_working_day -lt 20 ]]
do
    for (( i = 0 ; i < 20; i++ ))
    do 
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

        attendance

        monthly_wage=$(( monthly_wage + daily_wage ))
        total_working_day
    done
	c=$((c+1))
	total_emp_work=$(( total_full_time_work_time + total_part_time_work_time ))
done
echo Monthly Wage is : $monthly_wage
echo $c
