<h1 align="center">
<img src="https://raw.githubusercontent.com/TermubitCore/termubit/master/share/pixmaps/termubit256.svg" alt="Termubit" width="256"/>
<br/><br/>
Termubit Core [TRB, ]  
</h1>

<p align="center">
  <strong>TERMUBIT: Payment Protocol And Decentralized Financial Network.</strong><br>
  Open Source | High-Speed Settlement | Permissionless Infrastructure
</p>

<p align="center">
  <img src="https://img.shields.io/badge/Status-Mainnet--Ready-green" alt="Status">
  <img src="https://img.shields.io/badge/License-MIT-blue" alt="License">
  <img src="https://img.shields.io/badge/Network-Layer--1-orange" alt="Layer-1">
</p>

## What is Termubit?

**Termubit (TRB)** is an innovative, decentralized cryptocurrency designed to function as a primary medium of exchange. Termubit provides a secure, transparent, and immutable ledger for global peer-to-peer transactions.

The mission of Termubit is to provide a functional alternative to traditional currencies by offering a scalable payment infrastructure that is not controlled by any central authority. Founded on 10.2.2026

### Peer-to-Peer Network
Termubit operates on a distributed network of nodes. Every node maintains a full copy of the blockchain, ensuring that the history of all transactions is transparent and verifiable by anyone, anywhere.

### Transaction Processing & Settlement
Unlike slower legacy systems, Termubit is engineered for speed. With a **3 minute block time**, transactions are confirmed and settled across the network rapidly. This makes it a viable tool for real-world merchant payments and rapid digital transfers.

### Network Security
The network is secured via the **Scrypt Algorithm**. Miners provide computational power to validate transactions and secure the blockchain against double-spending attacks. In exchange for this work, miners receive a block reward, ensuring a fair and decentralized distribution of the currency.

### Difficulty Management
To maintain the stability of the 3 Minutes block interval, Termubit utilizes **DigiShield**. This technology allows the network to adjust mining difficulty in real-time after every block, protecting the network from hashrate fluctuations and ensuring consistent payment processing times.

## Usage

To start your journey with Termubit Core, see the [installation guide](INSTALL.md) and the [getting started](doc/getting-started.md) tutorial.

The JSON-RPC API provided by Termubit Core is self-documenting and can be browsed with `termubit-cli help`, while detailed information for each command can be viewed with `termubit-cli help <command>`.

### Ports

Termubit Core by default uses port `8599` for peer-to-peer communication that
is needed to synchronize the "mainnet" blockchain and stay informed of new
transactions and blocks. Additionally, a JSONRPC port can be opened, which
defaults to port `8598` for mainnet nodes. It is strongly recommended to not
expose RPC ports to the public internet.

| Function | mainnet | testnet | regtest |
| :------- | ------: | ------: | ------: |
| P2P      |   8599 |   12253 |   8433 |
| RPC      |   8598 |   12252 |   8432 |

## Ongoing development

Termubit Core is an open source and community driven software. The development
process is open and publicly visible; anyone can see, discuss and work on the
software.

Main development resources:

* [GitHub Projects](https://github.com/termubit/termubit/projects) is used to
  follow planned and in-progress work for upcoming releases.
* [GitHub Discussions](https://github.com/termubit/termubit/discussions) is used
  to discuss features, planned and unplanned, related to both the development of
  the Termubit Core software, the underlying protocols and the TRB asset.
  
### Version strategy
Version numbers are following ```major.minor.patch``` semantics.

### Branches
There are 4 types of branches in this repository:

- **master:** Unstable, contains the latest code under development.
- **maintenance:** Stable, contains the latest version of previous releases,
  which are still under active maintenance. Format: ```<version>-maint```
- **development:** Unstable, contains new code for upcoming releases. Format: ```<version>-dev```
- **archive:** Stable, immutable branches for old versions that no longer change
  because they are no longer maintained.

***Submit your pull requests against `master`***

*Maintenance branches are exclusively mutable by release. When a release is*
*planned, a development branch will be created and commits from master will*
*be cherry-picked into these by maintainers.*

## Contributing 🤝

If you find a bug or experience issues with this software, please report it
using the [issue system](https://github.com/termubit/termubit/issues/new?assignees=&labels=bug&template=bug_report.md&title=%5Bbug%5D+).

Please see [the contribution guide](CONTRIBUTING.md) to see how you can
participate in the development of Termubit Core. There are often
[topics seeking help](https://github.com/termubit/termubit/labels/help%20wanted)
where your contributions will have high impact and get very appreciation. wow.

## Very Much Frequently Asked Questions ❓

Do you have a question regarding Termubit? An answer is perhaps already in the
[FAQ](doc/FAQ.md) or the
[Q&A section](https://github.com/termubit/termubit/discussions/categories/q-a)
of the discussion board!

## License ⚖️
Termubit Core is released under the terms of the MIT license. See
[COPYING](COPYING) for more information.
