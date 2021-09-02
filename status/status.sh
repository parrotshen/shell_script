#!/bin/bash

# $1 set the exit status of "test"
./test $1 && echo "success \$? -> $?" || echo "fail \$? -> $?"

# let $2 be the exit status of "status.sh"
exit $2
