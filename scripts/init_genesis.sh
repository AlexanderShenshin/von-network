#!/bin/bash

set -e

if [ -f "/home/indy/ledger/sandbox/pool_transactions_genesis" ]; then
    echo "Genesis transactions file already exists"
    exit
fi

if [ ! -z "$IPS" ]; then
    echo von_generate_transactions -s "$IPS"
    von_generate_transactions -s "$IPS"
elif [ ! -z "$IP" ]; then
    echo von_generate_transactions -i "$IP"
    von_generate_transactions -i "$IP"
else
    echo von_generate_transactions
    von_generate_transactions
fi
