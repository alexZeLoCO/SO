#! /bin/bash

if [ $# -ne "1" ]
then
	echo "USO: $0 <usuario>" >&2
	exit 1
fi

(getent passwd | grep "^$1:.*$")
data="1"
echo "$data"
echo "$(($data + 1))"
echo "(($data + 1))"
exit 0
