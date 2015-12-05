#include "Move.h"
#include <iostream>
using namespace std;


Move::Move(double a, double b) {
	x = a;
	y = b;
}

Move Move::add(const Move &m) const {
	int newX = x + m.x;
	int newY = y + m.y;
	return Move(newX, newY);
}

void Move::showmove() const {
	cout << "(" << x << ", " << y << ")" ;
}

void Move::reset(double a, double b) {
	x = a;
	y = b;
}