require('@nomicfoundation/hardhat-toolbox')
require('dotenv').config({ path: '.env' })

const QUICKNODE_RPC_URL = process.env.QUICKNODE_RPC_URL
const PRIVATE_KEY = process.env.PRIVATE_KEY

/** @type import('hardhat/config').HardhatUserConfig */
module.exports = {
  solidity: '0.8.17',
  networks: {
    // goerli is the only one supported by Flashbots.
    goerli: {
      url: QUICKNODE_RPC_URL,
      accounts: [PRIVATE_KEY],
    },
  },
}
