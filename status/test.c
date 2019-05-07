#include <stdio.h>
#include <stdlib.h>


// C_SHELL  # echo $status
// BA_SHELL # echo $?


int main(int argc, char *argv[])
{
    if (argc != 2)
    {
        printf("Usage: test <number>\n");
        return -1;
    }

    return (int)atoi( argv[1] );
}

