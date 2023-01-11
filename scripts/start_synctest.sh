#!/bin/bash

set -e

if [ ! -f "/home/indy/ledger/sandbox/pool_transactions_genesis" ] && [ -z "${GENESIS_FILE}" ]; then
  bash ./scripts/init_genesis.sh
fi

pip3 install -U pip &&
pip install --no-cache-dir -r server/requirements.txt

python -m server.synctest
