#!/bin/sh
R="`realpath $0`"
DIR="`dirname $R`"

# mine to walletB
monerod --testnet --no-igd --hide-my-port --testnet-data-dir $DIR \
	--p2p-bind-ip 127.0.0.1 \
	--testnet-p2p-bind-port 38080 \
	--testnet-rpc-bind-port 38081 \
	--add-exclusive-node 127.0.0.1:28080 \
	--add-exclusive-node 127.0.0.1:48080 \
	--start-mining 9yhHFUUZeARW6ecyHJe2ZARrWEHnifGLQK8tvKZVccVYNoeRKQp8rfDXGzWaJuGT4m3diT8gHGww9B5vwW92m2k91iMJTPM \
	--mining-threads 1 \
	--log-level 0
