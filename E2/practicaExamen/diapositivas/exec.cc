#include <iostream>
#include <unistd.h>
#include <sys/wait.h>

int main () {
	std::cout << "Inicio el proceso padre. (PID / PPID): (" << getpid() << " / " << getppid() << ")" <<  std::endl;

	if (fork() == 0) {
		std::cout << "Inicio el proceso hijo. (PID / PPID): (" << getpid() << " / " << getppid() << ")" << std::endl;	
		execl("/bin/hola.sh", "hola.sh", NULL);
		perror("ERROR");
	}
	int* status;
	wait(status);
	std::cout << "Fin de un proceso (PID / PPID): (" << getpid() << " / " << getppid() << ")" << std::endl;
	return 0;
}
