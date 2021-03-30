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


function workhours()
{
local attendance=$1
if [ $attendance -eq 0 ]
then
	workhours=0
elif [ $attendance -eq 1 ]
then
	workhours=$parttimehr
else
	workhours=$fulldailyhr
fi
echo $workhours
}

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
