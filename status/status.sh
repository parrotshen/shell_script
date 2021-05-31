#!/bin/bash

# $? is the exit status of "test"
./test $1
echo "\$? -> $?"

# let $2 be the exit status of "status.sh"
exit $2
