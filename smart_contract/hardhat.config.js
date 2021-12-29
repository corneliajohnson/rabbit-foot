require("@nomiclabs/hardhat-waffle");

module.exports = {
  solidity: "0.8.0",
  networks: {
    ropsten: {
      //alchemy project key
      url: "https://eth-ropsten.alchemyapi.io/v2/K1Io8IZ21gZyc40Y35Wx5OjxRPZ3KeBA",
      //private key from metamask
      accounts: [
        "1b8e7dc3ef7a1f1364b1a238fda182e66eb83c4c6fed6b8c6975d36ba0bf4dec",
      ],
    },
  },
};
