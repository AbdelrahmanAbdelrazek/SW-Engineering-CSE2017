#pragma once
#ifndef BANKACCOUNT_H_
#define BANKACCOUNT_H_
#include <string>
class BankAccount
{
private:
	std::string m_account_owner;
	std::string m_account_id;
	double m_balance;
public:
	BankAccount(const std::string & account_owner, double balance = 0); // default constructor
	void withdraw(double amount);
	void deposit(double amount);
	void show() const;
};
#endif