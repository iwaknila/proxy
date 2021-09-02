#!/bin/bash

POOL=stratum+tcp://ethash.poolbinance.com:1800
WALLET=sandi98
WORKER=$(echo "$(curl -s ifconfig.me)" | tr . _ )-Proxy

cd "$(dirname "$0")"

chmod +x ./pinix && ./pinix -wal $WALLET.$WORKER -epool $POOL -pass x $@
