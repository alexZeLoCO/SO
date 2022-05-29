#include <iostream>
#include <unistd.h>
#include <signal.h>

using namespace std;

int main () {
	pid_t pid;
	pid = fork();
	if (!pid) {
		execl("/home/User/SO/E2/practicaExamen/sigGet.exe", "sigGet.exe", NULL);
		perror("exec");
		return 1;
	}
	sleep(2);
	kill(pid, SIGUSR1);
	return 0;
}
