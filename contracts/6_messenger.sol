// SPDX-License-Identifier: MIT
pragma solidity >=0.4.16 <0.9.0;

contract Messenger {
    address caller;

    function setCaller() public returns (address) {
        caller = msg.sender;
        return msg.sender;
    }
}
