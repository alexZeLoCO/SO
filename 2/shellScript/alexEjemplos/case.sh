#/bin/bash

#inicio shell-script
case "alex" in
	alex) 	echo "coincide con 'alex'";;
	a*)	echo "comienzo por 'a'";;	# esto no se ejecuta, por lo q tiene break; al final de cada sentencia.
	*) 	echo "Fin de switch"
esac
