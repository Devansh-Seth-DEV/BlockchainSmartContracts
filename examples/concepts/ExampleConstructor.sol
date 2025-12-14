// SPDX-License-Identifier: MIT
pragma solidity 0.8.15;

contract ExampleConstructor {
    address public myAddress;

    /*
        @brief constructor of ExampleConstructor contract

        @description
        The constructors of contract will be called only once and that will be
        during the time of contract deployment.
        It is good to instantiate the storage variables inside the constructor
        which will allow the deployer to set data accordingly

        @param someAddress Address to instantiate `myAddress` with

        @note
        This setter function will going to cost some `gas` because the funciton
        is going to perform the write operation on the storage variable `myAddress`
        the current estimated cost value from Remix-IDE for this function
        is `109400` gas    
    */
    constructor(address someAddress) {
        myAddress = someAddress;
    }

    /*
        @brief A setter function for `myAddress` storage variable

        @description
        This setter function will set our `myAddress` storage variable
        with the given `newAddress` value

        @param newAddress New address to be set

        @note
        This setter function will going to cost some `gas` because the funciton
        is going to perform the write operation on the storage variable `myAddress`
        the current estimated cost value from Remix-IDE for this function
        is `24722` gas        
    */
    function setMyAddress(address newAddress) public {
        myAddress = newAddress;
    }

    /*
        @brief A setter function for `myAddress` storage variable

        @description
        This setter function will set our `myAddress` storage variable
        with the contract's address who called this function

        @note
        This setter function will going to cost some `gas` because the funciton
        is going to perform the write operation on the storage variable `myAddress`
        the current estimated cost value from Remix-IDE for this function
        is `24432` gas        
    */
    function setMyAddressToMsgSender() public {
        myAddress = msg.sender;
    }
}