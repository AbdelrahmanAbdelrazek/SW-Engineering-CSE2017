#include "stock20.h"
#include <iostream>
using namespace std;

int main()
{
	Stock stock1("hopa lola", 100, 10.5);
	std::cout << "company name is " << stock1.get_company()<< endl;
	std::cout << "nshares " << stock1.get_shares() << endl;
	std::cout << "share_value " << stock1.get_share_val() << endl;
	std::cout << "total : " << stock1.get_total_val() << endl;
}