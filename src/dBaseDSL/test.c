#include <stdio.h>

int main()
{
  printf ("%s\n", __mingw_get_crt_info ());
  return 0;
}
