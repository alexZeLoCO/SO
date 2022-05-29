#include <iostream>
#include <unistd.h>

int main () {
	std::cout << "Inicio el proceso padre. (PID / PPID): (" << getpid() << " / " << getppid() << ")" <<  std::endl;

	if (fork() == 0) {
		std::cout << "Inicio el proceso hijo. (PID / PPID): (" << getpid() << " / " << getppid() << ")" << std::endl;	
	}
	std::cout << "Fin de un proceso (PID / PPID): (" << getpid() << " / " << getppid() << ")" << std::endl;
	return 0;
}
