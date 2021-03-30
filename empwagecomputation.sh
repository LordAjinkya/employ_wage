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
