#include <iostream>
#include <unistd.h>
#include <signal.h>
#include <math.h>

int t;
double mid;

bool debug = false;

double foo (double x) {
	return pow(x, 7)-28*pow(x, 6)+322*pow(x, 5)-1960*pow(x, 4)-6769*pow(x, 3)-13132*pow(x, 2)+13068*x;
}

void handler (int sig) {
	if (debug) {
		std::cout << "SIGALRM" << std::endl;
	}
	//std::cout << "Calculation after " << t << " seconds. root=" << mid << ". f(x)=" << foo(mid) << std::endl;
	printf("Calculation after %d seconds. root=%0.50f f(root)=%0.50f\n", t, mid, foo(mid));
	exit(0);
}

int main (int argc, char* argv[]) {
	if (argc != 2 && argc != 3) {
		perror("USO: bisec <tiempo>");
		exit(1);
	}

	if (argv[2] != NULL) {
		debug = true;
	}
	double a = -1;
	double b = 1;

	int iter = 0;

	struct sigaction act;
	act.sa_handler = handler;
	act.sa_flags = 0;
	sigaction(SIGALRM, &act, NULL); 

	t = atoi(argv[1]);

	alarm(t);

	while (true) {
		iter++;
		if (debug) {
			std::cout << "Iteration: " << iter << std::endl;
			std::cout << "a=" << a << " f(a)=" << foo(a) << std::endl;
			std::cout << "b=" << b << " f(b)=" << foo(b) << std::endl;
			std::cout << "mid=" << mid << " f(mid)=" << foo(mid) << std::endl;
			std::cout << "/// --- /// --- /// --- /// --- /// --- /// --- ///" << std::endl;
		}
		mid = (a+b)/2;
		if (foo(a) * foo(mid) < 0) {
			b = mid;
		} else {
			a = mid;
		}
	}
	return 0;
}

