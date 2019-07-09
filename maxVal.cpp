#include <iostream>
using namespace std;
#define R 10
extern "C" int max(int *tab,int size);

int main()
{
	int tab[10]={1,3,4,5,23,45,7,9,8,2};
	int maks = max(tab,R);
	std::cout<<"Max value: "<<maks<<endl;
	return 0;
}