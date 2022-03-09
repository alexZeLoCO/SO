#! /bin/bash

if test $# -ne "1"
then
	echo "El número de parámetros es incorrecto" >&2
	echo "USO: $0 <shell>" >&2
	exit 1
fi
echo "La lista de usuarios con shell $1 es:"
# name:pass:UID:GID:fullName:home:shell
(getent passwd | grep ".*:.*:.*:.*:.*:.*$1")
exit 0
