#!/bin/bash

SWAP_FILE=/var/swapfile
if [ -f $SWAP_FILE ]; then
    echo "$SWAPFILE found, skip"
    exit;
fi

/bin/dd if=/dev/zero of=$SWAP_FILE bs=1M count=1024
/bin/chmod 600 $SWAP_FILE
/sbin/mkswap $SWAP_FILE
/sbin/swapon $SWAP_FILE

