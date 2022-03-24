#! /bin/bash

if [ $# -ne "1" ]
then
	echo "El número de parámetros es incorrecto." >&2
	echo "USO: $0 <usuario>" >&2
	exit 1
fi

echo "Información del usuario $1:"
data=$(getent passwd | grep "^$1:.*$")
echo "UID: $(echo $data | cut -d ':' -f 3)"
echo "GID: $(echo $data | cut -d ':' -f 4)"
echo "Directorio personal: $(echo $data | cut -d ':' -f 5)"
echo "Intérprete de comandos: $(echo $data | cut -d ':' -f 6)"
exit 0
