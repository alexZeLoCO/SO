#include <iostream>
#include <sys/types.h>
#include <unistd.h>

using namespace std;

int glob=6;

int main () {
	int var;
	pid_t pid;
	cout << "Comienzo la ejecución" << endl;
	var = 88;
	if ((pid = fork()) == EXIT_FAILURE) exit(EXIT_FAILURE);
	if (!pid) { glob++; var++; }
	else
		sleep(2);
	cout << "pid = " << getpid() << "glob = " << glob << "var = " << ar << endl;
	exit(EXIT_SUCCESS);
}
