#include <iostream>
#include <time.h> 
using namespace std;

int fib(int n)
{
  return n < 2 ? 1 : fib(n-1) + fib(n-2) ;
}

int main()
{
  clock_t start = clock();
  int result = fib(40);
  clock_t end = clock();
  cout << (double)(end - start) / CLOCKS_PER_SEC << "sec.\n" << result << endl;
}