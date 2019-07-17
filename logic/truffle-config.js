const HDWalletProvider = require('truffle-hdwallet-provider');
const infuraKey = "667fe16331fd413bbb5f4c3ece7211a8";
const memonic = "hill visual amateur final cluster sweet vocal pudding language deal blur cry";

module.exports = {
    networks: {
        kovan: {
            provider: new HDWalletProvider(memonic, "https://kovan.infura.io/v3/" + infuraKey),
            network_id: 42
        },
        ropsten: {
            provider: new HDWalletProvider(memonic, "https://ropsten.infura.io/v3/" + infuraKey),
            network_id: 3
        }
    },
};

// 0: Olympic, Ethereum public pre-release PoW testnet
// 1: Frontier, Homestead, Metropolis, the Ethereum public PoW main network
// 1: Classic, the (un)forked public Ethereum Classic PoW main network, chain ID 61
// 1: Expanse, an alternative Ethereum implementation, chain ID 2
// 2: Morden Classic, the public Ethereum Classic PoW testnet
// 3: Ropsten, the public cross-client Ethereum PoW testnet
// 4: Rinkeby, the public Geth-only PoA testnet
// 5: Goerli, the public cross-client PoA testnet
// 6: Kotti Classic, the public cross-client PoA testnet for Classic
// 8: Ubiq, the public Gubiq main network with flux difficulty chain ID 8
// 42: Kovan, the public Parity-only PoA testnet
// 60: GoChain, the GoChain networks mainnet
// 77: Sokol, the public POA Network testnet
// 99: Core, the public POA Network main network
// 100: xDai, the public MakerDAO/POA Network main network
// 31337: GoChain testnet, the GoChain networks public testnet
// 401697: Tobalaba, the public Energy Web Foundation testnet
// 7762959: Musicoin, the music blockchain
// 61717561: Aquachain, ASIC resistant chain
// [Other]: Could indicate that your connected to a local development test network.