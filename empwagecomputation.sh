echo"welcome to employee wage computation" 
ispresent=1
isabsent=0
randomnum=$((RANDOM%2))
if [ $randomnum -eq $ispresent ]
then
	echo "Employee is present"
else
	echo "employee is absent"
fi

isfulltime=1
ispartttime=2
salaryperhr=100
emphr=0
salary=0
for((day=0;day<20;day++))
do
	randomnum=$((RANDOM%3))
	if [ $randomnum -eq $isfulltime ]
	then
		emphr=8
	elif [ $randomnum -eq $isparttime ]
	then
		emphr=4
	else
		emphr=0
	fi
	salary=$(($salary+($emphr*$salaryperhr))
done
echo "salary is :" $salary

wagepermonth=0
noofdays=1
noofhours=0
parttimecount=0


function emp_Work_Hrs(){

	emp_TimeCheck=$(( RANDOM%3 ))

	case $emp_TimeCheck in
	$isFullTime)
		echo ">>>>>>>>>>>>>>>>>FULL TIME EMPLOYEE<<<<<<<<<<<<<<<"

		while [ $totalWork_Day_Month -ne 20 ]
		do
				emp_present=$((RANDOM%2))

			if [ $emp_present -eq $isPresent ]
				then
						empTotal_Hrs=8
				else
						empTotal_hrs=0
			fi 
				
			empWork_Hrs=$(($empTotal_Hrs + $empWork_Hrs ))
	
           ((totalWork_Day_Month++))
		done
			

  		;;
	$isPartTime)
			echo ">>>>>>>>>PART TIME EMPLOYEE<<<<<<<<<<<<<<<<"

    		while [ $totalWork_Day_Month -ne 20 ]
			do
            emp_present=$((RANDOM%2))

         if [ $emp_present -eq $isPresent ]
            then
                  empTotal_Hrs=4
            else
                  empTotal_hrs=0
         fi
       				((totalWork_Day_Month++))
				empWork_Hrs=$(($empTotal_Hrs + $empWork_Hrs ))

			done

	;;
	*)
					empTotal_Hrs=0
	esac

}

emp_Work_Hrs

echo "employee working hrs.." $empWork_Hrs

isfulltime=1
isparttime=2
isfulltime=200
parttimehr=100
salary=0
randomnum=$((RANDOM%3))
if [ $randomnum -eq $isfulltime ]
then
	salary=$(($salaryperhr*$fulltimehr))
elif [ $randomnum -eq $isparttime ]
then
	salary=$(($salaryperhr*$parttimehr))
else
	salary=0
fi
echo "salary :" $salary

for((day=0;day=100;day++))
do
	randomnum=$((RANDOM%3))
	if [ $randomnum -eq $isfulltime ]
	then
		emphr=100
	else
		emphr=0
	fi
salary=$((salary+($emphr*$salaryperhr)))
done
echo "Salary is :" $salary

while [ $noofdays -lt 20 ] && [ $noofhours -lt 100 ]
	do
		attendance=$((RANDOM%3))
		workhours="$( workhours $(($attendance)) )"
		case $attendance in
			0)
				dailywage=0
				;;
			1)
				dailywage=$(($wageperhr*$parttimehr))
				parttimecount=$(($parttimecount+1))
				if [ $parttimecount -eq 2 ]
				then
					echo "parttime salary:"$salary
				fi
	done
echo "salary for 100 days"$salary


declare -A dict_Sal

#variable Decleration
isFullTime=1
isPartTime=0
empWagePerHr=20
totalWork_Day_Month=1
isPresent=1
isAbsent=0
empWork_Hrs=0
#Employee time Check...

#functions Creation.....
 function emp_Salary(){

         salary=$(( $empWagePerHr * $empWork_Hrs ))
         dict_Sal[$totalWork_Day_Month]=$salary
   }


 function emp_Work_Hrs(){

   emp_TimeCheck=$(( RANDOM%3 ))

   case $emp_TimeCheck in
   $isFullTime)
      echo ">>>>>>>>>>>>>>>>>FULL TIME EMPLOYEE<<<<<<<<<<<<<<<"

      while [ $totalWork_Day_Month -lt 21 ]
      do
            emp_present=$((RANDOM%2))

         if [ $emp_present -eq $isPresent ]
            then
                  empTotal_Hrs=8
            else
                  empTotal_hrs=0
         fi

         empWork_Hrs=$(($empTotal_Hrs + $empWork_Hrs ))
         emp_Salary
         ((totalWork_Day_Month++))
       done 
       
      ;;
   $isPartTime)
         echo ">>>>>>>>>PART TIME EMPLOYEE<<<<<<<<<<<<<<<<"

         while [ $totalWork_Day_Month -lt 21 ]
         do
            emp_present=$((RANDOM%2))

         if [ $emp_present -eq $isPresent ]
            then
                  empTotal_Hrs=4
            else
                  empTotal_hrs=0
         fi
  		empWork_Hrs=$(($empTotal_Hrs + $empWork_Hrs ))
 		emp_Salary
                  ((totalWork_Day_Month++))
         done
       

   ;;
   *)
               empTotal_Hrs=0
   esac

}

emp_Work_Hrs
echo "employee working hrs.." $empWork_Hrs
echo  "total sal" $salary
for key in ${!dict_Sal[@]}
do
        echo "DAY = $key : Salary = ${dict_Sal[$key]}"
done
