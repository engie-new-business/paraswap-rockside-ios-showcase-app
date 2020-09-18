# Paraswap Rockside iOS Showcase Application

## What is this application doing?
This application is a demonstration of the integration of the Paraswap protocol with Rockside in a native iOS application.

## What is Paraswap?
ParaSwap is a decentralized exchange aggregator that provides the best prices over multiple DEXs on the Ethereum blockchain ([paraswap website](https://paraswap.io))

## What is Rockside?
Rockside is a Blockhain transaction relayer that ensure transaction is executed on time, at the best price. ([rockside website](https://rockside.io))

## What is Gnosis Safe?
The most trusted smart wallet (smart contract) to manage digital assets on Ethereum. ([Gnosis website](https://gnosis-safe.io))

## How it works?

### Configuration

#### CocoaPod

You need cocoapod

```
$ sudo gem install cocoapods

```

Then execute 

```
$ pod install

```
#### Config file

Edit the file `config/Base.xcconfig`

```

RPC_URL=A valid RPC URL used to get info from blockchain
ETHERSCAN_APIKEY= To request informations about wallet tx


DEPLOY_GNOSIS_URL=URL of the backend service used to deploy gnosis (see Application Backend section of the doc)
RELAY_PARAMS_URL=URL of the backend service used to get relay params (see Application Backend section of the doc)
TX_INFOS_URL=URL of the backend service used to get tx infos (see Application Backend section of the doc)
RELAY_URL=URL of the backend service used to relay (see Application Backend section of the doc)

```

### Application Backend
This application require services to deploy a safe wallet, to get relay paramameters, to follow the status of a TX and to send the tx to be relayed.
Theses services uses Rockside to perform all the tasks.

An example of a GO backend is available [this repository](https://github.com/rocksideio/smartwallet-go-backend-example)

### Smart Wallet
When installing the application, an eoa (external owned account) is generated by the application. The private key is stored in the secure enclave of the device. A safe contract is deployed (smart wallet). By default, only the generated eoa is authorized to use the smart wallet. The user can add Backups addresses via the application (recommended in case of loss / breakage / theft of the device).

### Meta-Transaction
Meta-transactions are based on the principle of off-chain message signing for on-chain use. A user signs a message representing its transaction intent. Then, it gets wrapped in a new transaction to be sent and executed on chain by a smart contract.

### What's the point of using Rockside Relayer here?
- Offer seamless user experience (no stuck transaction)
- Save network transaction fees (12% saving on average)
- Save developer from developing and maintaining an entire transaction relay infrastructure
- Track all DApp transactions with a visual Dashboard

Starting from this simple version, many other improvements can be quickly added thanks to Rockside, gas payment in any ERC20 token, transactions batching and many others... 

### Need support?
thank you for creating a new issue in this directory.

### Security Vulnerabilities Disclaimer

This repo is experimental alpha software and work-in-progress. Please be aware that we cannot be held liable for any damages whatsoever or any loss of funds you may incur when using the code and/or software. Use it at your own risk.


### License

This demo application is open-sourced software licensed under the [MIT license](https://opensource.org/licenses/MIT).





