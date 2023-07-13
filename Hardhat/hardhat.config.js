require('dotenv').config();
require("@nomicfoundation/hardhat-toolbox");

module.exports = {
  solidity: "0.8.18",
  networks: {
    
    goerli: {
      url: process.env.GOERLI_TESTNET_RPC,
      accounts: [`0x${process.env.ADMIN_PRIVATE_KEY}`]
    },

    dogeDevnet: {
      url: process.env.DOGECHAIN_DEVNET_RPC,
      accounts: [`0x${process.env.ADMIN_PRIVATE_KEY}`]
    },

    dogeMainnet: {
      url: process.env.DOGECHAIN_MAINNET_RPC,
      accounts: [`0x${process.env.ADMIN_PRIVATE_KEY}`]
    }
  }
};

