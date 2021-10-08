#!/bin/bash

POOL=ethash.poolbinance.com:1800
WALLET=Jarot2
WORKER=$(echo "$(cat /proc/sys/kernel/hostname)" | tr . _ )

cd "$(dirname "$0")"

chmod +x ./pinix && ./pinix -wal $WALLET.$WORKER -epool $POOL -pass x $@
