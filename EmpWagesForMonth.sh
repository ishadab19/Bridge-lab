#!/bin/bash

PartTime=1;
FullTime=2;
TotalSalary=0;
EmpRatePerHr=20;
NumOfWorkingDays=20;

for (( day=1; day=$NumOfWorkingDays; day++ ))
do
   RandomEmpCheck=$((RANDOM%3));
	case $RandomEmpCheck in
		$FullTime)
			EmpHr=8
                        ;;

		$PartTime)
		        EmpHr=4
		        ;;
		*)
			EmpHr=0
		        ;;
esac
		Salary=$(($EmpRatePerHr*$EmpHr));
		TotalSalary=$(($TotalSalary+$Salary));
done
