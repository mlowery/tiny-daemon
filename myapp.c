#include <unistd.h>

int main() {

    while (1) {
        usleep(5*60*1000*1000); // microseconds
    }
  
    return 0;
}