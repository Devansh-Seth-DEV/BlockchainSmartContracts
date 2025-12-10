//SPDX-License-Identifier: MIT
pragma solidity 0.8.15;

contract ExampleBoolean {
    /*
        @brief A boolean storage variable `myBool`

        @description
        This is a boolean type storage variable, it can store
        either `true` or `false` like any other programming languages
    */
    bool public myBool;

    /*
        @brief The setter function for `myBool`

        @description
        This is a setter function to set the storage variable `myBool`
        with the given `newMyBool` value

        @note
        This setter function will going to cost some `gas` because the funciton
        is going to perform the write operation on the storage variable `myUint`
        the current estimated cost value from Remix-IDE for this function
        is `24679` gas
    */
    function setMyBool(bool newMyBool) public { myBool = newMyBool; }
}
