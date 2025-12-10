//SPDX-License-Identifier: MIT
pragma solidity 0.8.15;

contract ExampleAddress {
    /*
        @brief A storage variable of `address` datatype

        @description
        An `address` datatype is a Standard Ethereum address
        used to store the address of the account
        who deployed the smart contract or someone else's account address
        It can be used to transfer or recieve values to and from the other
        smart contracts or accounts respectively

        @example
        An ethereum address looks like
        ```txt
        0x1234567890abcdef1234567890abcdef12345678
        ```

        @note
        The `address` is of 20 bytes or 40 hex characters (each byte 
        has 2 hex characters)
    */
    address public someAddress;

    /*
        @brief A setter function for `someAddress` storage variable

        @description
        This setter function will set our `someAddress` storage variable
        with the given `someOtherAddress` value

        @note
        This setter function will going to cost some `gas` because the funciton
        is going to perform the write operation on the storage variable `someAddress`
        the current estimated cost value from Remix-IDE for this function
        is `24722` gas
    */
    function setSomeAdderss(address someOtherAddress) public {
        someAddress = someOtherAddress;
    }

    /*
        @brief A getter function to check the current balance of address

        @description
        Every `address` variable has a property called `balance` (uint256)
        this `balance` property will tell you the current balance of that  address
        So this getter function will returns the balance of the address
        stored in `someAddress`

        @return Returns the current balance of address stored in `someAddress`

        @note
        You can see that we've wrote `view` here, it means that this function can access
        the contract's variables and can performs operations on them

        @note
        This getter function will going to cost some `gas` because the funciton
        is going to perform the read operation on the storage variable `someAddress`
        the current estimated cost value from Remix-IDE for this function
        is `5101` gas
    */
    function getAddressBalance() public view returns (uint) {
        return someAddress.balance;
    }
}
