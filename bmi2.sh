#!/bin/sh
echo "Enter Height In Meter.";
read height;
echo "Enter Weight In Killogram.";
read weight;
##Standared Value One kg is equal to 2.20462
poundInOneKg=2.20462;
centimetreInMeter=100;
oneKm=1000; ##sta.
Mile=160934.4; ##Given Value in paper.
Calorise=0.57; ##Given Value in paper.
weightInPound=$(echo "scale=1; $weight*$poundInOneKg" | bc)
CaloriesBurnedPerMile=$(echo "scale=3; $Calorise*$weightInPound" | bc)
heightInCm=$(echo "$height*$centimetreInMeter"|bc)
Pacelength=$(echo "$heightInCm*0.415"|bc);
stepsInOneMile=$(echo "$Mile/$Pacelength"|bc)
conversionFactor=$(echo "scale=5; $CaloriesBurnedPerMile/$stepsInOneMile"|bc)
caloriesBurned=$(echo "scale=3; $stepsInOneMile*$conversionFactor"|bc)
distanceCovered=$(echo "scale=3; $stepsInOneMile*$Pacelength"|bc)
distanceInMeter=$(echo "scale=3; $distanceCovered/$centimetreInMeter"|bc)
distanceInKm=$(echo "scale=3; $distanceInMeter/$oneKm"|bc)
echo "<<-------------------------------------->><<-------------------------------------->>;"
echo "Calories Burned are = $caloriesBurned .cal"
echo "Distance Covered is = $distanceInKm .km"
