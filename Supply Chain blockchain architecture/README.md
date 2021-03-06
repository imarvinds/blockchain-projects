# Project #7. Blockchain Architecture Part B

## Getting Started

These instructions will get you a copy of the project up and running on your local machine for development and testing purposes.

### Prerequisites

Node.js runtime environment is required.

### Installing

Install all required dependencies

```
$ npm install
```

Install truffle

```
$ npm install -g truffle
```

### Steps to run a local ethereum network, and deploy your token contract to this local network

1) Open a Terminal window, and make sure you are inside your project directory

2) Run the command `truffle develop` (to run a local ethereum network)

3) Use the command `compile` (to compile your solidity contract files)

4) Use the command `migrate --reset` (to deploy your contract to the locally running ethereum network)

5) Use the command `test` (to unit tests the contract)

6) For running the Front End of the DAPP, open another terminal window and go inside the project directory, and run:

```
cd app
npm run dev
```

### Optional - To deploy token contract on Rinkeby

Setup [Infura](https://infura.io/)

Copy project id and paste in truffle-config.js file

Add metamask seed in truffle-config.js file

```
truffle migrate --reset --network ropesten
```

### Other information

Truffle version used:

```
5.3.3
```

Contract Address:

```
0xe0B0f7bC5905BbaCcBc32A31A2640610dbfB3ad8
```

Library used:

```
web3.js - web3.js is a collection of libraries which allow you to interact with a local or remote Ethereum node, using an HTTP, WebSocket or IPC connection.
```

IPFS used:

```
No
```

UML Diagrams:

* [activity diagram](./diagrams/activity_diagram.jpg?raw=true "Activity diagram")
* [sequence diagram](./diagrams/sequence_diagram.jpg?raw=true "Sequence diagram")
* [state diagram](./diagrams/state_diagram.jpg?raw=true "State diagram")
* [class diagram](./diagrams/class_diagram.jpg?raw=true "Class diagram")


## Built With

* [web3.js](https://github.com/ethereum/web3.js/) - web3.js is a collection of libraries which allow you to interact with a local or remote Ethereum node, using an HTTP, WebSocket or IPC connection.
* [Truffle](https://www.trufflesuite.com/docs/truffle/getting-started/installation) - A development environment, testing framework and asset pipeline for blockchains using the Ethereum Virtual Machine (EVM).
* [Infura](https://infura.io) - Provide secure, reliable, and scalable access to Ethereum and IPFS. It also provide the infrastructure for your decentralized applications so you can focus on the features.
* [Metamask](https://metamask.io/) - A bridge that allows you to visit the distributed web of tomorrow in your browser today. It allows you to run Ethereum dApps right in your browser without running a full Ethereum node.