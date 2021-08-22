#!/bin/bash

while :
do
clear
echo "WELCOME TO THE PHONE DIRECTORY"
echo "1. Add a Contact "
echo "2. Search COntact "
echo "3. Delete Contace "
echo "4. View Phone Directory "
echo "5. Quit "
read -p "Enter Your choice " usr_cmd
clear

case $usr_cmd in
1)echo "Add NEW CONTACT "
read -p "Enter Name : " name
echo "Go that!!"
read -p "Enter Number : " number
clear
echo "New Contact Info : "
echo "-> Name: $name. -> Number: $number"
echo "$name : $number" >> phonedir.log
echo "Saved Successfully!!";;


2) echo "Search Contacts"
read -p "Enter contact name to Search " search_query
clear
echo "SEARCH RESULTS : "
grep -i $search_query phonedir.log
;;


3)echo "DELETE CONTACT"
read -p "Enter Contact name to be Deleted(case-sensitive): " delete_string
sed -i -e "/$delete_string/d" phonedir.log
echo "Delete Successful"
;;


4)echo "PHONE DIRECTORY"
echo ""
cat phonedir.log
;;
5)break;;
*)echo "INVALID OPTION";;

esac;

read -p "Press 5 to Quit, Anything else to Return to Main Menu : "  confirm_exit
if [ $confirm_exit -eq 5 ]
then break
fi
done

