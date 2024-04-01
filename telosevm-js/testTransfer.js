const { TelosEvmApi } = require('./dist/telosevm-js.js')
// const { EosEvmApi } = require('eosio-evm-js')
const fetch = require('node-fetch')

let api = new TelosEvmApi({
    // Ensure the API has console printing enabled
    // endpoint: 'https://testnet.telos.net',
    endpoint: 'http://192.168.50.10:9888',

    // Must match the chain ID the contract is compiled with (1 by default)
    chainId: 41,

    // Enter your own private keys if you wish to sign transaction (examples provided)
    // address: 0xf79B834A37f3143F4a73fC3934eDac67fd3a01CD
    ethPrivateKeys: [
      '0x8dd3ec4846cecac347a830b758bf7e438c4d9b36a396b189610c90b57a70163d',
    ],

    fetch,

    // Enter Telos account that EVM contract is at / will be deployed to
    // telosContract: 'evmcontract4',
    telosContract: 'eosio.evm',

    // Enter your own private keys (examples provided)
    telosPrivateKeys: [
      '5JEATzThX3uUHZ1dVTU8VafnS9YFsGAKMhEMNzbmowiVoBzAQgP'
    ]
  })

console.log('Starting...');
console.log(api.telos)

(async () => {
  /*
  const tlosTransfer = await api.transfer({ rawSign: false, account: 'evmcontract4', sender: '0xf79b834a37f3143f4a73fc3934edac67fd3a01cd', to: '0x1a5930aD7CC2afAD2e4c4565FF7A6b19bd9DDaA8', quantity: `0.0100 TLOS` }, {gasLimit: 100000000})
  console.dir(tlosTransfer)
  */
  // await api.telos.deposit({ from: '0xf79b834a37f3143f4a73fc3934edac67fd3a01cd', quantity: `0.0100 TLOS` })
  // const tlosTransfer = await api.transfer({ returnRaw: true, rawSign: false, account: 'eosio.evm', sender: '0xf79b834a37f3143f4a73fc3934edac67fd3a01cd', to: '0x1a5930aD7CC2afAD2e4c4565FF7A6b19bd9FDaA8', quantity: `0.0100 TLOS` }, {gasLimit: 100000000})
  // const tlosGas = await api.telos.estimateGas({account: 'eosio.evm', sender: '0xf79b834a37f3143f4a73fc3934edac67fd3a01cd', tx: tlosTransfer});
  console.log(parseInt(tlosGas, 16));
})()