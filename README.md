# Monero (XMR) testnet sandbox

This project provides a minimal testnet sandbox which allows you to explore and play with Monero (XMR) on your own network with no cost.

You will get 3 wallets:
 * `walletA` with address `9u9j6xG1GNu4ghrdUL35m5PQcJV69YF8731DSTDoh7pDgkBWz2LWNzncq7M5s1ARjPRhvGPX4dBUeC3xNj4wzfrjV6SY3e9`
 * `walletB` with address `9yhHFUUZeARW6ecyHJe2ZARrWEHnifGLQK8tvKZVccVYNoeRKQp8rfDXGzWaJuGT4m3diT8gHGww9B5vwW92m2k91iMJTPM`
 * `walletC` with random address

There's a setup for 3 daemons that start mining immediately after at least two of them connect forming a network:
 * `node1` will mine to `walletA`
 * `node2` will mine to `walletB`
 * `node3` will mine to `walletC`
 
Each wallet and node is started by `run.sh` script in their directory.

You should receive first unlocked coins once 61st block has been mined.

Too many blocks? Want to try again? You may remove all wallets, blockchain copies and logs by running `clean.sh`. Make sure all wallets and nodes have been shut down before. This will restart your testnet from scratch.
