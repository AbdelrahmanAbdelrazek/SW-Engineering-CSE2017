#pragma once
// stock20.h -- augmented version
#ifndef STOCK20_H_
#define STOCK20_H_
#include <string>
class Stock
{
private:
	std::string company;
	int shares;
	double share_val;
	double total_val;
	void set_tot() { total_val = shares * share_val; }
public:
	Stock(); // default constructor
	Stock(const std::string & co, long n = 0, double pr = 0.0);
	~Stock(); // do-nothing destructor
	void buy(long num, double price);
	void sell(long num, double price);
	void update(double price);
	void show() const;
	std::string const & get_company() const { return company; }
	int get_shares() const { return shares; }
	double get_share_val() const { return share_val; }
	double get_total_val() const { return total_val; }
	const Stock & topval(const Stock & s) const;
};
#endif