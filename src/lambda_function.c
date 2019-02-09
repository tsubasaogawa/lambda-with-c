#include <stdio.h>

int main(void) {
  char buf[512];

  while(1) {
    /* Obtain from Stdin https://qiita.com/mpyw/items/aff12a6ff2c7726ed1d8 */
    if(scanf("%511[^\n]%*[^\n]", buf) != 1) {
      break;
    }
    /* Ignore linefeed */
    scanf("%*c");

    printf("%s\n", buf);
  }

  return 0;
}

