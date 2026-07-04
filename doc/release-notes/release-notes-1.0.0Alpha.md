# Termucoin Core 1.0.0 Alpha
=========================

Termucoin Core 1.0.0 Alpha is a complete re-architecture of Termucoin, changing from
using the Litecoin/Dogecoin client as its base, to Bitcoin It's still Termucoin,
with the same Scrypt PoW algorithm, same reward schedule, but there are a 
lot of changes under the hood.

Please note that this is a very early release, and a full audit of the code
is still in progress. The client has been hard-coded to only work with testnet
for now, to avoid the risk of damaging real wallets.

Rebranding to Termucoin Core
---------------------------

Following in the footsteps of Bitcoin (Core), the Termucoin reference client
has been rebranded as "Termucoin Core". This helps separate its identity
from Termucoin (the network).

termucoin-cli
------------

Where previously commands were sent to termucoind by running
"termucoind <command>", 1.0.0 adopts the model from Bitcoin Core where there is
a separate "termucoin-cli" executable which is used instead. This avoids the risk
of accidentally trying to start two daemons at the same time, for example.


Transaction malleability-related fixes
--------------------------------------

Fixes for risk-cases involving transaction malleability have been added; this
is particularly important for any merchants or exchanges using the built-in
wallet system. 

Testnet
-------

As mentioned at the start of this document, the alpha-client is for use with the
Termucoin testnet only. This is an alternative Termucoin blockchain which is
not used for real transactions, and instead is intended for testing of experimental
clients. Wallets and addresses are incompatible with the normal Termucoin
network, in order to isolate the two.

As "TestTERM" is essentially valueless, it can be acquired easily for testing,
either by mining, or from a faucet such as http://testTERM.lionservers.de/
