pragma solidity ^0.6.0;

contract HotelRoom {

    address payable public owner;
    
    enum Statuses { Vacant, Occupied }
    Statuses currentStatus;

    event Occupy(address _occupant, uint _value);

    constructor() public {
        owner = msg.sender;
        currentStatus = Statuses.Vacant;
    }

    modifier onlyWhileVacant {
        require(currentStatus == Statuses.Vacant, "Currently occupied.");
        _; // this executes function body
    }

    modifier costs(uint _amount) {
        require(msg.value >= _amount, "Not enough Ether provided.");
        _;
    }

    receive() external payable onlyWhileVacant costs(2 ether) {
        /*
        
        // Check price
        //require(msg.value >= _amount, "Not enough Ether provided.");

        // Check status
        //require(currentStatus == Statuses.Vacant, "Currently occupied.");

        Above code is written as modifiers and added to the function 
        call definition so that the checks can run before the function is called

        */
        currentStatus = Statuses.Occupied;
        owner.transfer(msg.value);
        emit Occupy(msg.sender, msg.value);
    }
}