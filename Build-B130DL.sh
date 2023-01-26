#!/bin/bash

clear
make clean
. build/envsetup.sh
lunch twrp_B130DL-eng
mka recoveryimage

echo "Recovery Should Be Built"
echo ""
read
