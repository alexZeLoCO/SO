#include <iostream>
#include <unistd.h>
#include <signal.h>

char** mensaje;
int    m_len;

void handler (int sig) {
	for (int i = 0 ; i < m_len ; i++) {
		std::cout << *(mensaje+i) << " ";
	}
	std::cout << std::endl;
	exit(0);
}

int main (int argc, char* argv[]) {
	if (argc < 3) {
		perror("USO: alarma <segundos> <mensaje>");
		exit(1);
	}
	if (!fork()) {
		mensaje = argv+2;
		m_len = argc-2;
		struct sigaction act;
		act.sa_flags = 0;
		act.sa_handler = handler;
		sigaction(SIGALRM, &act, NULL);
		alarm(atoi(argv[1]));
		pause();
	}
	return 0;
}
