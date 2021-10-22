#!/bin/bash

make clean
. build/envsetup.sh
lunch omni_B130DL-eng
mka recoveryimage

echo " Recovery Should Be Built"
echo ""
read
