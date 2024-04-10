#/bin/bash

set -x
declare -i ARG=$1

sudo xbacklight $ARG

exit 0

