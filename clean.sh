#!/bin/sh
R="`realpath $0`"
DIR="`dirname $R`"

rm -rf $DIR/node?/lmdb $DIR/node?/*.log $DIR/node?/*.bin $DIR/node2/38080 $DIR/node3/48080
rm -rf $DIR/wallet?/wallet* $DIR/wallet?/*.log
