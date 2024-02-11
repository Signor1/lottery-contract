# Lottery Contract

This Solidity smart contract enables users to participate in a lottery game. The contract randomly selects a winner among the participants and rewards them with the accumulated prize pool.

## Getting Started

To deploy and interact with the contract, follow the steps below:

### Prerequisites

- Node.js (v14.x or later)
- npm (Node.js package manager)
- Hardhat

### Installation

1. Clone the repository:

```
git clone https://github.com/Signor1/lottery-contract.git
```

2. Navigate to the project directory:

```
cd lottery-contract
```

3. Install dependencies:

```
npm install
```

4. Compile the contracts:

```
npx hardhat compile
```

5. Deploy the contracts to a local Hardhat network:

```
npx hardhat run scripts/deploy.js --network localhost
```


## Testing

Unit tests are included to ensure the functionality of the contract.

1. Run the unit tests:

```
npx hardhat test
```

## Contributing

Contributions are welcome! Feel free to submit issues or pull requests.