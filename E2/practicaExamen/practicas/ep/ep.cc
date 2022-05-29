#include <iostream>
#include <unistd.h>
#include <signal.h>

char** _argv;

void handler (int sig) {
	if (!fork()) {
		execvp(_argv[0], _argv);
		perror("Orden no encontrada");
		exit(1);
	}
}

int main (int argc, char* argv[]) {
	struct sigaction act;
	act.sa_handler = handler;
	act.sa_flags = 0;
	sigaction(SIGALRM, &act, NULL);
	int t = atoi(argv[1]);
	_argv = argv+2;
	do {
		alarm(t);
		pause();
	} while (true);
	return 0;
}
