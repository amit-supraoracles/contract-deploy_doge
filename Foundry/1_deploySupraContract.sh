#!/bin/bash  
source .env


CHAIN_RPC=${DOGECHAIN_TESTNET_RPC}


#:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
#                                 DEPLOY SUPRA CONTRACT
#:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::


ROUTER_RECEIPT=$(forge create --via-ir --private-key ${ADMIN_PRIVATE_KEY} src/SupraContract.sol:SupraContract --rpc-url ${CHAIN_RPC} --gas-limit 2000000 --legacy)

ROUTER_ADDRESS=$(echo "$ROUTER_RECEIPT" | awk '/Deployed to:/ {print $3}')
echo ""
echo "SUPRA SC Address ::::::: ${ROUTER_ADDRESS}"

