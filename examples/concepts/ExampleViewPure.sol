// SPDX-License-Identifier: MIT
pragma solidity 0.8.15;

contract ExampleViewPure {
    uint public myStorageVariable;

    /*
        @brief A getter view type function

        @description
        This function demonstrate the use of `view` type functions
        A `view` function can access the variables outside its scope but
        it cannot write them

        Therefore its a best practice to make your getter functions are `view`
        type

        @return Returns the value of `myStorageVariable` which is of `uint256` type

        @note
        Since this is a `view` function it can access `myStorageVariable` but
        it cannot perform write operation on `myStorageVariable`
    */
    function getMyStorageVariable() public view returns (uint) {
        return myStorageVariable;
    }


    /*
        @brief A getter pure type function

        @description
        This function demonstrates the use of `pure` type functions
        A `pure` function cannot access variables that are out of its scope
        (e.g myStorageVariable). It can only access the variable under 
        its scope or the other pure functions

        @return Returns the sum of given two values in `uint256` type

        @note
        This function cannot access `myStorageVariable` as it is out of scope
    */
    function getAddition(uint a, uint b) public pure returns (uint) {
        return a+b;
    }

    /*
        @brief A setter function for `myStorageVariable`

        @description
        This setter function will set the storage variable `myStorageVariable`
        with the given `newVar` value

        @note
        This setter function will going to cost some `gas` because the funciton
        is going to perform the write operation on the storage variable `myStorageVariable`
        the current estimated cost value from Remix-IDE for this function
        is `22564` gas
    */
    function setMyStorageVariable(uint newVar) public {
        myStorageVariable = newVar;
    }
}
