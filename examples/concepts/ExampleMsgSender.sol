// SPDX-License-Identifier: MIT
pragma solidity 0.8.15;

contract ExampleMsgSender {
    address public someAddress;

    /*
        @brief An update function for `someAddress`

        @description
        This update funciton will set the value of `someAddress` storage variable
        to the address of the account that is directly responsible for the execution
        of this function

        @note
        There are some objects that are globally available in solidity
        'msg` is one of them it has a property called `sender` 
        which contains the address of the EOA(Externally Owned Account)
        or Contract Account(if another smart contract called this contract)

        @note
        This setter function will going to cost some `gas` because the funciton
        is going to perform the write operation on the storage variable `someAddress`
        the current estimated cost value from Remix-IDE for this function
        is `24410` gas
    */
    function updateSomeAddress() public { someAddress = msg.sender; }
}
