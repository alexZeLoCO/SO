#! /bin/bash

if [ $# -ne "5" ]
then
	echo "El número de parámetros es incorrecto." >&2
	echo "USO: $0 <usuario> <UID> <GID> <comentario> <shell>" >&2
	exit 1
fi

data=$(getent passwd)

if echo $data | grep "^$1:.*$" > /dev/null
then
	echo "El usuario $1 ya existe." >&2
	exit 1
fi

if echo $data | grep "^.*:.*:$2:.*$" > /dev/null
then
	echo "El UID $2 ya existe." >&2
	exit 1
fi

if ! echo $data | grep "^.*:.*:.*:$3:.*$" > /dev/null
then
	echo "El GID $3 no existe." >&2
	exit 1
fi

echo "$1:x:$2:$3:/home/$4/:$5" >> ./passwd_copia


exit 0 
