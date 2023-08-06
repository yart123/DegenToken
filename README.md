# Degen Token Assessment

This is a assessment project for Metacrafters Module 4.

## Description

This project consists of a token that the owner can mint and transfer to other users. Any user can then redeem the token for an NFT.

## Getting Started

### Installing

```
npm install
```

Create a .env file with these 2 variables:
```
SNOWTRACE_API_KEY = *Your snowtrace API key*
WALLET_PRIVATE_KEY = *Your private key (Obviously use a throwaway account)*
```


### Executing program

Compile the smart contracts
```
npx hardhat compile
```
Deploy the contract to testnet
```
npx hardhat run scripts/deploy.js --network fuji
```
You now have the project deployed, and can interact with it via browser wallet and/or snowtrace.

## Authors

Iaroslav Titov

Based on Metacrafters assessment starter project

## License

This project is licensed under the MIT License
