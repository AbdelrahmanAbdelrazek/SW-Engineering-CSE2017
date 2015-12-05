#include "stock20.h"
#include <iostream>
using namespace std;

int main()
{
	Stock orange("Orange", 100, 10.5);
	std::cout << "company name: " << orange.get_company() << endl;
	std::cout << "nshares " << orange.get_shares() << endl;
	std::cout << "share_value " << orange.get_share_val() << endl;
	std::cout << "total : " << orange.get_total_val() << endl;
}