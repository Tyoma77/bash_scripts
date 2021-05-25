#!/bin/bash
echo "Enter username"
read username

exist_users=$(cat /etc/passwd | awk -F ":" '{print $1}')
exist_shells=($(cat /etc/shells | sed '1d'))

for user in $exist_users
do
	if [  "$username" == "$user" ]
	then
		echo "User $username exist"
		exit 0
	fi
done

echo "Choose the shell"

while true
do
	for (( i=0; i < ${#exist_shells[@]}; i++ ))
	do
		echo "$(( $i + 1 )) ${exist_shells[$i]}"
	done

	read shell_number

	if [ "$shell_number" -le "${#exist_shells[@]}" ]
	then
		shell=${exist_shells[$shell_number]}
		break
	else
		echo "The number is incorrect please choose the right number"
	fi
done

echo "Enter home directory"
read home_directory

sudo useradd -d $home_directory  -s $shell  $username

if [ $? == 0  ]
then
	echo "User has been created successfully"
	exit 0
else
	tmp=$?
	echo "Something went wrong"
	exit $tmp 
fi
