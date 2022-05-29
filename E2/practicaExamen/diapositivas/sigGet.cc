#include <iostream>
#include <unistd.h>
#include <signal.h>

void handler (int sig) {
	std::cout << "Sig recibida" << std::endl;
	exit(0);
}

int main () {
	struct sigaction act;
	act.sa_flags = 0;
	act.sa_handler = handler;
	sigemptyset(&act.sa_mask);

	sigaction(SIGUSR1, &act, NULL);

	while (true) {
		sleep(5);
		std::cout << "Waiting" << std::endl;
	}
	return 0;
}
