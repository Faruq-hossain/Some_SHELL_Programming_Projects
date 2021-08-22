#!/bin/sh
startRange=15.0;
SeverelyUnderweigh=16.0;
Underweight=18.5;
NormalRange=25.0;
Overweight=30.0;
ObeseClass1=35.0;
ObeseClass2=40.0;
severelyUnderweigh="15 – 16: Severely underweight";
underweight="16 – 18.5: Underweight";
normalRange="18.5 – 25: Normal Range (healthy)";
overweight="25 – 30: Overweight";
obeseClass1="30 – 35: Obese class I – Moderately obese";
obeseClass2="35 – 40: Obese class II – Severely obese";
echo "Enter Height In Meter.";
read height;
echo "Enter Weight In Killogram.";
read weight;
height=`expr $height \* $height`;
bodyMassIndex=$(echo "scale=1; $weight / $height" | bc);
echo "<<------------------------>>*<<------------------------>>*<<------------------------>>"
if [ $(echo "$bodyMassIndex>=$startRange"|bc) -gt 0 -a $(echo "$bodyMassIndex<$SeverelyUnderweigh"|bc) -gt 0 ]
then
   echo "$severelyUnderweigh = $bodyMassIndex"
elif [ $(echo "$bodyMassIndex>=$SeverelyUnderweigh"|bc) -gt 0 -a $(echo "$bodyMassIndex<$Underweight"|bc) -gt 0 ]
then
    echo "$underweight = $bodyMassIndex";
elif [ $(echo "$bodyMassIndex>=$Underweight"|bc) -gt 0 -a $(echo "$bodyMassIndex<$NormalRange"|bc) -gt 0 ]
then
    echo "$normalRange = $bodyMassIndex";
elif [ $(echo "$bodyMassIndex>=$NormalRange"|bc) -gt 0 -a $(echo "$bodyMassIndex<$Overweight"|bc) -gt 0 ]
then
    echo "$overweight = $bodyMassIndex";
elif [ $(echo "$bodyMassIndex>=$Overweight"|bc) -gt 0 -a $(echo "$bodyMassIndex<$ObeseClass1"|bc) -gt 0 ]
then
    echo "$obeseClass1 = $bodyMassIndex";
elif [ $(echo "$bodyMassIndex>=$ObeseClass1"|bc) -gt 0 -a $(echo "$bodyMassIndex<$ObeseClass2"|bc) -gt 0 ]
then
    echo "$obeseClass2 = $bodyMassIndex";
else
   echo "Invalid Body Mass Index"
fi
echo "<<------------------------>>*<<------------------------>>*<<------------------------>>"
echo "$severelyUnderweigh.";
echo "$underweight.";
echo "$normalRange.";
echo "$overweight.";
echo "$obeseClass1.";
echo "$obeseClass2.";
