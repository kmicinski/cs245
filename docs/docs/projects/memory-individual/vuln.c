#include <stdio.h>
#include <string.h>

void foo(char *input) {
  char buffer[100];

  // Copy `input` into the buffer
  strcpy(buffer, input);
  
  printf("Successfully copied the input!\n");
}

void helloWorld() {
  printf("Hello, world!\n");
  return;
}

void helloFoo(char *foo) {
  printf("Hello, ");
  printf("%s", foo);
  printf("\n");
}

int main(int argc, char **argv) {
  if (argc < 2) {
    printf("Sorry, must call this program with at least one argument.\n");
  }
  
  foo(argv[1]);
  
  return 0;
}
