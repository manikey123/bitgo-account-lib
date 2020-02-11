#!/bin/bash
echo 'In New Coin Config'
set -o errexit # Exit on error

#TRON
echo "In Tron New Coin Config"
node node_modules/protobufjs/cli/bin/pbjs -t static-module -w commonjs -o ./resources/trx/protobuf/tron.js ./resources/trx/protobuf/Discover.proto ./resources/trx/protobuf/Contract.proto ./resources/trx/protobuf/tron.proto
node node_modules/protobufjs/cli/bin/pbts -o ./resources/trx/protobuf/tron.d.ts ./resources/trx/protobuf/tron.js

#New coin scripts can be added below