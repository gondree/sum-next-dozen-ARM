#include <stdio.h>
#include <stdlib.h>

int sumSix(int, int, int, int, int, int);
int sumNextDozen(int);

int main(int argc, char** argv)
{
  int total;
  int n = 10;

  if (argc > 1)
     n = strtol(argv[1], NULL, 10);
   
  total = sumNextDozen(n);
  printf("The sum of %d .. %d is %i\n", n, n+11, total);

  return 0;
}
