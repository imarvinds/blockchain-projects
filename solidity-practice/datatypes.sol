pragma solidity ^0.6.0;

contract MyContract {
    //First we have a String called myString, which is used for storing arbitrary text.
    string public myString = "Hello, world!";
    
    //we have bytes32 called myBytes32, which is somewhat like a string but more performant.
    bytes32 public myBytes32 = "Hello, world
    
    //myInt is an integer, which can be positive or negative.
    int public myInt = 1;
    
    myUint is an unsigned integer, which means it CANNOT be negative (it cannot have a sign, i.e., minus sign).
    uint public myUint = 1;
    
    //myUint256 is an unsigned integer of 256 bytes. This is used for very large numbers. Note, that uint is shorthand for uint256.
    uint256 public myUint256 = 1;
    
    //myUint8 is an unsigned integer of 8 bytes. This is used for very small numbers.
    uint8 public myUint8 = 1;
    
    //myAddress is used to store a particular Ethereum address for an external user or smart contract.
    address public myAddress = 0x5A0b54D5dc17e0AadC383d2db43B0a0D3E029c4c;

    /*Here we've created a Struct called MyStruct 
    that allows us to special data we've defined. 
    In this case, we specify that this struct can hold 2 values: 
    a uint called myUint, and a string called myString.*/
    struct MyStruct {
        uint myUint;
        string myString;
    }

    //creating a struct using the above definition
    MyStruct public myStruct = MyStruct(1, "Hello, World!");

    function getValue() public pure returns(uint) {
        uint value = 1;
        return value;
    }
}