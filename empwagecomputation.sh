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
