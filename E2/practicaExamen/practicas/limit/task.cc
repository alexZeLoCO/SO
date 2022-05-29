#include <iostream>

long out = 0;

int main () {
	for (int i = 0 ; i < 10^10 ; i++) {
		for (int j = 0 ; j < 10^10 ; j++) {
			out+=i^j;
		}
	}
	std::cout << out << std::endl;
	return 0;
}
