#include "BankAccount.h"
#include <iostream>
using namespace std;

int main()
{
	BankAccount a("john el shekh ahmed");
	a.show();
	BankAccount b("abu bakr el baghdady", 1000);
	b.show();
	b.deposit(-100);
	b.show();
	b.deposit(500);
	b.show();
	b.withdraw(-200);
	b.show();
	b.withdraw(3000);
	b.show();
	b.withdraw(200);
	b.show();
}