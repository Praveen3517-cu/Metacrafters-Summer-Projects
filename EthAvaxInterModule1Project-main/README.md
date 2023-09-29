# ErrorHandling Contract

The `ErrorHandling` contract is a Solidity smart contract that demonstrates different error handling mechanisms in Ethereum. It includes three functions: `testAssert`, `testRequire`, and `testRevert`, each showcasing a different way to handle errors.

## Usage

To interact with the contract, you can use a Solidity development environment such as Remix or Hardhat. The contract provides the following functions:

### `setAge(uint _age)`

This function sets the `age` variable of the contract to the specified value `_age`.

### `testAssert()`

The `testAssert` function performs an assertion on the `age` variable, verifying that it falls within the range of 18 to 80. If the assertion fails, the transaction will be reverted with an error message. If the assertion succeeds, a congratulatory message will be logged to the console.

### `testRequire()`

The `testRequire` function uses the `require` statement to check if the `age` variable is greater than or equal to 18. If the condition evaluates to false, the function will revert with an error message. If the condition is true, a congratulatory message will be logged to the console.

### `testRevert()`

The `testRevert` function manually checks if the `age` variable is outside the range of 18 to 80. If the condition is met, the function will revert with an error message. Otherwise, a congratulatory message will be logged to the console.

## Error Handling Mechanisms

This contract demonstrates three different error handling mechanisms:

1. **Assert**: The `assert` statement checks a condition and throws an exception if it evaluates to false. It is commonly used to validate internal state and should not be used for input validation or conditions that can be influenced by external factors.

2. **Require**: The `require` statement checks a condition and reverts the transaction if it evaluates to false. It is typically used to validate inputs and conditions that are controlled by external actors, such as user inputs or contract interactions.

3. **Revert**: The `revert` statement allows you to revert a transaction with an error message. It can be used to provide detailed information about why the transaction was reverted.

Each mechanism serves a specific purpose, and the choice of which one to use depends on the situation and the desired behavior of the contract.

## License

This contract is released under the MIT License. Please see the [LICENSE](LICENSE) file for more details.
