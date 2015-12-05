#include "BankAccount.h"
#include <iostream>
using namespace std;
BankAccount::BankAccount(const std::string & account_owner, double balance)
{
	m_account_owner = account_owner;
	m_balance = balance;
}
void BankAccount::withdraw(double amount){
	if (amount < 0) {
		cout << "Can't withdraw a negative amount." << endl
		<< "Aborting!" << endl;
	}
	else if (amount > m_balance) {
		cout << "You don't have enought money in your account." << endl
			<< "Aborting!" << endl;
	}
	else {
		m_balance -= amount;
	}
}
void BankAccount::deposit(double amount) 
{
	if (amount < 0) {
		cout << "Can't deposit negative amount." << endl
			<< "Aborting!" << endl;
	}
	else {
		m_balance += amount;
	}
}
void BankAccount::show() const 
{
	using std::ios_base;
	// set format to #.###
	ios_base::fmtflags orig =
		cout.setf(ios_base::fixed, ios_base::floatfield);
	std::streamsize prec = cout.precision(3);
	cout << "Account Owner: " << m_account_owner
		<< " balance: " << m_balance << '\n';
	// restore original format
	cout.setf(orig, ios_base::floatfield);
	cout.precision(prec);

}