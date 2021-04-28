pragma solidity >=0.4.24;

contract TextOwner {

    string public text;
    address public textOwner;

    event textClaimed(address owner);

    constructor() public {
        text = "example:myInventionPatentText";
    }

    function claimText() public {
        textOwner = msg.sender;
        emit textClaimed(msg.sender);
    }

}