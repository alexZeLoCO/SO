#!/bin/bash 
if test $# -ne 1 
then 
	echo "El número de parámetros es incorrecto" >&2
	echo "USO $0 <Usuario>" >&2
	exit 1
fi
DATA=$(getent passwd | grep "^$1:.*$")
USERID=$(echo "$DATA" | cut -f 3 -d :)
GROUPID=$(echo "$DATA" | cut -f 4 -d :)
HOMEDIR=$(echo "$DATA" | cut -f 6 -d :)
SHELL=$(echo "$DATA" | cut -f 7 -d :)
echo "Información de usuario: $1"
echo "$DATA"
echo "UID: $USERID"
echo "GID: $GROUPID"
echo "Directorio Personal: $HOMEDIR"
echo "Intérprete de Comandos: $SHELL"
exit 0
