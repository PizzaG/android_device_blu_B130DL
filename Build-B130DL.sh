#!/bin/bash

## TWRP
#############################
export USE_CCACHE=1
. build/envsetup.sh
m clean
lunch twrp_B130DL-eng
mka recoveryimage
echo
echo " Recovery Should Be Built"
echo ""
read
#############################
#############################

