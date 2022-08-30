#!/bin/bash -x

#constant for program
IsPartTime=1;
IsFullTime=2;
MaxHrInMonth=10;
EmpRatePerHr=20;
NumOfWorkingDays=20;
 #variables
totalEmpHr=0;
totalWorkingdays=0;

while [[ $totalEmpHr -lt $MaxHrInMonth &&
        $totalWorkingDays -lt $NumOfWorkingDays ]]
do
        ((totalWorkingDays++));
        empCheck=$((RANDOM%3));
        case $empCheck in
           $IsFullTime)
              empHr=8
                ;;
           $IsPartTime)
              empHr=4
                ;;
           *)
              empHr=0
                ;;
        esac
        totalEmpHr=$(($totalEmpHr*$empHr))
done

totalSalary=$(($totalEmpHr*$EmpRatePerHr));



