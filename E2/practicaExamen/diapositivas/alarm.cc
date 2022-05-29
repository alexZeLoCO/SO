#include <iostream>
#include <unistd.h>

long f = 0; // Global f

void alarma (int sig) {
	std::cout << f << std::endl;
	exit (0);
}

int main () {
	struct sigaction act;
	act.sa_handler = alarma;
	act.sa_flags = 0;
	sigemptyset(&act.sa_mask);

	sigaction(SIGALRM, &act, NULL);

	alarm(5);

	for (int i = 0 ; i < 10^100000 ; i++) {
		for (int j = 0 ; j < i ; j++) {
			f+=j*i;
		}
	}

	std::cout << f << std::endl;
	std::cout << "noAlarm" << std::endl;
	return 0;
}
