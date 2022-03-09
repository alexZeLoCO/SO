# /bin/bash

if test $# -ne 1
then
	echo "Error, faltan argumentos" >&2
	echo "USO: $0 <usuario>" >&2
	exit 1
fi

if ! ../../3/ejercicios/existeUsuario $1 > /dev/null
then
	echo "El usuario $1 no existe en el sistema" >&2
	exit 1
fi

registro_usuario = $(getent passwd | grep "^$1:*$")
echo $registro_usuario | cut -d : -f 3
# Y lo demás ...
exit 0
