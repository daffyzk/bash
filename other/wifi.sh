#/bin/bash

nmcli dev wifi list

echo "ok which one is it then?"
read wifi

echo "password?"
read pw

nmcli dev wifi connect "$wifi" password "$pw"

exit 0

