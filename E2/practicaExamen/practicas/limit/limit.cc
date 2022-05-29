#include <iostream>
#include <unistd.h>
#include <signal.h>
#include <sys/wait.h>

pid_t child;

void handler (int sig) {
	kill(SIGTERM, child);
	std::cout << "Time passed. Proccess terminated" << std::endl;
	exit(0);
}

int main (int argc, char* argv[]) {
	if (argc < 3) {
		perror("USO: limit <segundos> <orden>");
		exit(1);
	}
	struct sigaction act;
	act.sa_handler = handler;
	act.sa_flags = 0;
	sigaction (SIGALRM, &act, NULL);
	child = fork();
	if (!child) {
		execvp(argv[2], argv+2);
	}
	alarm(atoi(argv[1]));
	wait(&child);
	return 0;
}
