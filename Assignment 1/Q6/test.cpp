#include <iostream>
#include"Move.h"
using namespace std;


int main() {
	Move m1 = Move(5, 4);
	Move m2 = Move();
	cout << "m1 = ";
	m1.showmove();
	cout << endl;
	cout << "m2 = ";
	m2.showmove();
	cout << endl;

	m2.reset(2, 3);
	cout << "m2 = ";
	m2.showmove();
	cout << endl;

	Move m3 = m1.add(m2);
	cout << "m3 = ";
	m3.showmove();
	cout << endl;

	m1.reset();
	cout << "m1 = ";
	m1.showmove();
	cout << endl;
	

} 