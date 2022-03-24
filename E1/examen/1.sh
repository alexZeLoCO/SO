#! /bin/bash

if [ "$#" -ne "1" ]
then
	echo "USO: $0 <UID>" >&2
	exit 1
fi

echo "Alumnos con UID superior a $1:"
getent passwd | grep "^.*:.*:.*:1002:.*$" | cut -d ':' -f 3,5 | sort -n | while read line
do
	_UID=$(echo "$line" | cut -d ':' -f 1)
	_name=$(echo "$line" | cut -d ':' -f 2)
	if [ "$_UID" -gt "$1" ]
	then
		echo "$_name con UID $_UID"
	fi
done
exit 0
