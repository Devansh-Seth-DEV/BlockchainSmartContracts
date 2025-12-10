//SPDX-License-Identifier: MIT
pragma solidity 0.8.15;

contract ExampleWrapAround {
    uint256 public myUint256;
    uint8 public myUint8 = 2**4; // 2^4 = 16

    /*
        @brief A sette function for `myUint256`

        @description
        This setter funciton will set the `myUint8` storage variable value
        with the given `newUint256` value

        @note
        This setter function will going to cost some `gas` because the funciton
        is going to perform the write operation on the storage variable `myUint256`
        the current estimated cost value from Remix-IDE for this function
        is `22587` gas
    */
    function setMyUint256(uint256 newUint256) public { myUint256 = newUint256; }

    /*
        @brief A sette function for `myUint8`

        @description
        This setter funciton will set the `myUint8` storage variable value
        with the given `newUint8` value

        @note
        This setter function will going to cost some `gas` because the funciton
        is going to perform the write operation on the storage variable `myUint8`
        the current estimated cost value from Remix-IDE for this function
        is `24724` gas
    */
    function setMyUint8(uint8 newUint8) public { myUint8 = newUint8; }
    

    /*
        @brief Wrap-Around function to decrement the value of storage variable by 1

        @description
        This function will be going to decrement the storage variable `myUint256`
        by 1 and will wrap-around its value automatically if it goes beyond the
        lower(0) or upper((2^256)-1) limits

        @note
        Try decrement the value `myUint256` when it is `0`!
        You can see that the value of `myUint256` reached its MAX
        beacuse here we've used a concept of solidity called `unchecked`

        @note
        By default from the newer versions of solidity the arithmatic operations
        are `checked` operations that means if they are going out of bound or 
        not making sense the compiler will simply throw an error
        To make the arithmetic operations possible you can perform them under
        `unchecked` scope in that case those operations were not check at the
        time of execution

        @note
        This function will going to cost some `gas` because the funciton
        is going to perform the write operation on the storage variable `myUint256`
        the current estimated cost value from Remix-IDE for this function
        is `24428` gas
    */
    function decrementMyUint256() public {
        unchecked { myUint256--; }
    }

    /*
        @brief Function to decrement the value of storage variable by 1

        @description
        This function will be going to decrement the storage variable `myUint8`
        by 1

        @note
        Try decrement the value `myUint8` when it is `0`!
        You can see that you'll get an error because in newer version
        of `Solidity` the smart contract will not automatically `wrap-around` the
        value back to `255` as the operation is `checked`

        @note
        This function will going to cost some `gas` because the funciton
        is going to perform the write operation on the storage variable `myUint8`
        the current estimated cost value from Remix-IDE for this function
        is `26699` gas
    */
    function decrementMyUint8() public { myUint8--; }
}
