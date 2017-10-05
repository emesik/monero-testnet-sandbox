#!/bin/sh
R="`realpath $0`"
DIR="`dirname $R`"

if [ ! -f wallet ]; then
	monero-wallet-cli --testnet \
		--generate-new-wallet $DIR/wallet \
		--password "" \
		--mnemonic-language English \
		--command "exit"
fi
monero-wallet-cli --testnet \
	--daemon-address 127.0.0.1:28081 --trusted-daemon \
	--wallet-file $DIR/wallet --password ""
