#!/bin/sh

# --- COMENTARIO DEL PROGRAMA ORIGINAL ---
# Este shell script muestra el uso del if <comando>

# ES IMPORTANTE SABER QUE LOS PREDICADOS EN SHELL-SCRIPT SON SIEMPRE LA
# EJECUCION DE UN COMANDO (ya que todos devuelven CIERTO Ó FALSO)

# Esto tiene que entrar por el else porque pepito no lo encuentra
# y el grep devuelve FALSO
# --- FIN COMENTARIO DEL PROGRAMA ORIGINAL ---

# Este shell script revisa si existe un usuario dado en el sistema.
# Revisa la salida de passwd y utiliza grep para filtrarlo.  

if test ! $# -eq "1"
then
	echo "Uso: $0 <usuario>" >&2
	exit 1
fi
if getent passwd | grep $1 >/dev/null
then
	echo "El usuario $1 PERTENECE al sistema."
else
	echo "El usuario $1 NO PERTENECE al sistema."
fi
