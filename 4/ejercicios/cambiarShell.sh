# /bin/bash

if test $# -ne 2
then
	echo "Error, faltan argumentos" >&2
	echo "USO: $0 <usuario> <shell>" >&2
	exit 1
fi

if test  mv ./passwd_bis ./passwd.bak
then
	echo "Error, no se pudo renombrar el fichero passwd" >&2
	exit 1
fi

cat passwd.bak | while read info_usuario
do
	usuario=$(echo $info_usuario | cut -d : -f 1)

	if test "$usuario" = "$1"
	then
		info_mantenida=$(echo $info_usuario | cut -d : -f 1-6)
		echo "$info_mantenida:$2" >> passwd.bak
	else
		echo "$info_mantenida" >> passwd.bak
	fi
done
exit 0
