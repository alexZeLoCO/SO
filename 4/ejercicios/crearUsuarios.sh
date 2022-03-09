# /bin/bash

if test $# -ne 2
then
	echo "Error, faltan argumentos" >&2
	echo "USO: $0 <fichero> <UID_Base>" >&2
	exit 1
fi

uid=$2
tail -n +2 "$1" | while read linea
do
	username=$(echo $linea | cut -d ";" -f 1 | cut -d @ -f 1)
	apellidos=$(echo $linea | cut -d ";" -f 2)
	nombre=$(echo $linea | cut -d ";" -f 3)
	gid=$(echo $linea | cut -d ";" -f 4)
	echo "$username:x:$uid:$gid:$apellidos:$nombre:/home$username:/bin/bash" >> passwd
	uid=$(($uid + 1))
done
exit 0
