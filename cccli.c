/*
  cc -- C Compiler for DX8A Computer
*/

#include <stdio.h>

cprintf(c)
{
  fprintf(stdout, c);
}

main(argc, argv)
  int argc;
  char** argv;
{
  if (argc == 1)
  {
    cprintf("No");
    exit(1);
  }

  cprintf("Yes");
}
