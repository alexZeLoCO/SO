#include <iostream>
#include <unistd.h>
#include <sys/wait.h>

int main (int argc, char* argv[]) {
	pid_t pid;
	for (int i = 0 ; i < atoi(argv[1]) ; i++) {
		pid = fork();
		if (!pid) {
			execvp(argv[2], argv+2);
		}
	}
	int* status;
	waitpid(pid, status, WNOHANG);
	return 0;
}
