#include <iostream> // Libreria para e/s (cout)
#include <unistd.h> // Libreria para llamadas al sistema (getpid(), getppid())

// using namespace std;

int main () {
	pid_t pid; // pid de este proceso
	pid_t ppid; // pid del padre de este proceso

	pid = getpid();
	ppid = getppid();

	std::cout << "Mi pid: " << pid << std::endl;
	std::cout << "Pid de mi padre: " << ppid << std::endl;

	return 0;
}
