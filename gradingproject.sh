echo "==================================================================="
echo "                  Grading System in Shell Scripting"
echo "==================================================================="
echo " "

totalmarks=100
echo -n "Enter obtain marks: "
read obtainmarks

if(( $obtainmarks > $totalmarks ))
then
echo "Invalid Argument"
elif(($obtainmarks >=90 & $obtainmarks <100))
then
echo "Grade A"
elif(($obtainmarks >=80 & $obtainmarks <90))
then
echo "Grade B"
elif(($obtainmarks >=70 & $obtainmarks <80))
then 
echo "Grade C"
else
echo "Fail"

fi
