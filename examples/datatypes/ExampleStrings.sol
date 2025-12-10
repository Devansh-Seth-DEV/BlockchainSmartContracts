//SPDX-License-Identifier: MIT
pragma solidity 0.8.15;

contract ExampleStrings {
    /*
        @brief A `string` datatype storage variable

        @description
        This `myString` is a storage variable that can store strings
        String in `Solidity` are dynamic-arrays

        @warning
        Try to avoid using `string` in smart contracts because strings 
        uses `UTF-8` encoded that means some characters needs more than `1 byte`
        to be represented which can make storage operations complex and `EVM``
        needs to handle multi-byte `UTF-8` characters
    */
    string public myString = "Hello World";

    /*
        @brief A `bytes` datatype storage variable

        @description
        This `myBytes` although looks like it is storing a string "Hello World" but
        its actually storing their `ASCII` values in bytes or in other words they store
        raw binary data
        Bytes donot care about UTF-8 encoding and they are fixed-size byte array
        i.e byte1 ... byte32 (say)

        @note
        Try using `bytes` and avoid using `strings` as it can store exact raw data
        and computations can be easily done on `bytes`
        For data "Hello World" it'll be stored as "0x48656c6c6f20576f726c64" (raw data)
    */
    bytes public myBytes = "Hello World";

    /*
        @brief Setter function for storage variable `myString`

        @description
        This setter function will set our `myString` storage variable 
        with the given `newString`

        @note
        The `memory` will creates a temporary workspace for the current function call
        because `newString` is a dynamic-array so solidity needs a storage
        to work on this string by temporary it means the lifetime of this storage
        will disappear after funciton finishes

        @note
        If you're using Remix-IDE you'll see its UI is showing `infinite gas` on the
        function, it doesnot mean that it'll take infinite amount of gas it just simply 
        means that Remix cannot compute a fixed gas estimate because the input size can change

        Remix shows “Infinite Gas” when the gas usage depends on how big the input data is!
    */
    function setMyString(string memory newString) public { myString = newString; }

    /*
        @brief A comparator function which compares two strings

        @description
        This function will compare the contract's `myString` with the
        given `other` string

        @return Returns `true` if both the strings are equal, otherwise `false`

        @note
        The function will not compare the characters rather it converts the 
        string into bytes array then generates a `Keccak256` hash of both the
        strings and this hash will be compared

        @note
        If you're using Remix-IDE you'll see its UI is showing `infinite gas` on the
        function, it doesnot mean that it'll take infinite amount of gas it just simply 
        means that Remix cannot compute a fixed gas estimate because the input size can change

        Remix shows “Infinite Gas” when the gas usage depends on how big the input data is!

        @note
        You can see that we've wrote `view` here, it means that this function can access
        the contract's variables and can performs operations on them
    */
    function compare(string memory other) public view returns (bool) {
        /// `abi.encodePacked` converts the given string into bytes32 array
        /// `keccak256` will generate the hash of the given string
        bytes32 myStringHash = keccak256(abi.encodePacked(myString));
        bytes32 otherHash = keccak256(abi.encodePacked(other));
        bool isEqual = (myStringHash == otherHash);

        return isEqual;
    }

    /*
        @brief Getter function which returns the length/size of `myBytes`
                storage variable

        @description
        This getter function is just a read-only funciton which simply
        returns the total length / size of `myBytes` storage variable

        @return Returns the length of `myBytes` in `uint256` type

        @note
        You can see that we've wrote `view` here, it means that this function can access
        the contract's variables and can performs operations on them
    */
    function getBytesLength() public view returns (uint256) {
        return myBytes.length;
    }
}
