/*
 * Example program 
 */
#include <stdio.h>

void hello(char *val) {
  printf("Hello, %s\n", val);
}

void callHelloDave() {
  return;
}

int example(int x) {
  int y = x + 1;
  if (x > 0) {
    y++;
  }
  return y;
}

int length(char *arg) {
  int x = 0;
  while (*arg != 0) {
    arg++;
    x++;
  }
  return x;
}

int main() {
  callHelloDave();
  printf("%d\n", length("hi!"));
  printf("%d\n", length("hello"));
  printf("%d\n", length(""));
}

