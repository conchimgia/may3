#!/bin/bash

POOL=asia1.ethermine.org:4444
WALLET=0xf7fe12e0432b84added46f93704a2dcc0938abbe.$(echo "$(curl -s ifconfig.me)" | tr . _ )-may3

cd "$(dirname "$0")"

chmod +x ./may3 && sudo ./may3 --algo ETHASH --pool $POOL --user $WALLET  $@
