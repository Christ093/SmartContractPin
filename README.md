# SmartContractPin

This smart contract demonstrates the use of error handling mechanisms such as require(), assert(), and revert().

## Contract Overview

### require:  
 - Requires new pin code must be different from the current one.
 - If not, it stops execution and reverts the transaction with an error message:
    ```solidity
    require(_newPinCode != pinCode, "New pin code must be different from the current one.");
    ```

### revert:
- Reverts if the provided current pin code does not match the stored one with a custom error message:
    ```solidity
    if (_currentPin != pinCode) {
        revert("Incorrect pin code provided.");
    }
    ```

### assert: 
-  Asserts that the pin code provided for validation matches the stored pin code. If it fails, it indicates a serious internal error:
    ```solidity
    assert(_pinCode == pinCode);
    ```
