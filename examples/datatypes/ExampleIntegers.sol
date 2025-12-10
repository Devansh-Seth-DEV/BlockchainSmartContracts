//SPDX-License-Identifier: MIT
pragma solidity 0.8.15;

contract ExampleIntegers {
    /*
        @brief unit is an alias for datatype uint256
        
        @description
        uint / uint256 is 256-bits unsigned integer
        The value ranges from 0 to (2^256)-1, very huge number right ?
    */
    uint public myUint;

    /*
        @brief uint8 is an 8-bits unsigned integer datatype

        @description
        The value ranges from 0 to (2^8)-1 or in simple terms from 0 to 255
    */
    uint8 public myUint8 = 250;


    /*
        @brief int is an 128-bit signed interger datatype

        @description
        The value ranges from -2^128 to (2^128)-1
    */
    int public myInt = -10; // -2^128 to (+2^128) - 1


    /*
        @brief setter function for variable `myUint`

        @description
        This is a public setter function that will update/set the contract
        `myUint` to the with the given value i.e `newMyUint`

        @note
        This setter function will going to cost some `gas` because the funciton
        is going to perform the write operation on the storage variable `myUint`
        the current estimated cost value from Remix-IDE for this function
        is `22586` gas
    */
    function setMyUint(uint newMyUint) public {
        myUint = newMyUint;
    }

    /*
        @brief Function to increment the value of storage variable by 1

        @description
        This function will be going to increment the storage variable `myUint8`
        by 1

        @note
        Try incrementing the value after `myUint8` reaches `255`!
        You can see that you'll get an error because in newer version
        of `Solidity` the smart contract will not automatically `wrap-around` the
        value back to `0`

        @note
        This function will going to cost some `gas` because the funciton
        is going to perform the write operation on the storage variable `myUint8`
        the current estimated cost value from Remix-IDE for this function
        is `26721` gas
    */
    function incrementUint8() public { myUint8++; }

    /*
        @brief Function to increment the value of storage variable by 1

        @description
        This function will be going to increment the storage variable `myInt`
        by 1

        @note
        This function will going to cost some `gas` because the funciton
        is going to perform the write operation on the storage variable `myUint8`
        the current estimated cost value from Remix-IDE for this function
        is `24589` gas
    */
    function incrementInt() public { myInt++; }
}
