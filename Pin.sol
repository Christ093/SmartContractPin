// SPDX-License-Identifier: MIT
pragma solidity ^0.8.28;

contract Pin {
    address public owner;
    uint256 private pinCode;

    constructor() {
        owner = msg.sender;
        pinCode = 1234;
    }

    function newPinCode(uint256 _currentPin, uint256 _newPinCode) public returns (bool) {
        if (_currentPin != pinCode) {
            revert("Incorrect pin code provided.");
        }
        require(_newPinCode != pinCode, "New pin code must be different from the current one.");
        pinCode = _newPinCode;
        return true;
    }

    function validatePinCode(uint256 _pinCode) public view returns (bool) {
        assert(_pinCode == pinCode);
        return true;
    }

    function getPinCode() public view returns (uint256) {
        require(msg.sender == owner, "Caller is not the owner.");
        return pinCode;
    }
}
