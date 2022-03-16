# /bin/bash

if test $# -ne "5"
then
	echo "USO: $0 <usuario> <UID> <GID> <comentario> <shell>" >&2
	exit 1
fi

if getent passwd | grep "^$1:.*"> /dev/null
then
	echo "El usuario ya existe" >&2
	exit 1
fi

if getent passwd | grep "^.*:.*:$2:.*" > /dev/null
then
	echo "El UID ya existe" >&2
	exit 1
fi

if !(getent group | grep "^.*:.*:$3:.*" > /dev/null)
then
	echo "El GID ya existe" >&2
	exit 1
fi

	
echo "$1:x:$2:$3:$4:/home/$1:$5" >> ./passwd_copia_out

exit 0
