#include <iostream>
#include <sys/types.h>
#include <unistd.h>

// un pid necesita un ppid. Si se elimina el padre, el nuevo ppid es el 1 (init).
int main () {
	pid_t id_proceso;	// Tipo de dato especifico para pids
	pid_t id_padre;

	id_proceso = getpid();	// getpid() retorna el pid de este proceso
	id_padre = getppid(); 	// getppid() retorna el pid del padre de este proceso

	std::cout << "PID proceso: " << id_proceso << std::endl;
	std::cout << "PID padre: " << id_padre << std::endl;
}
