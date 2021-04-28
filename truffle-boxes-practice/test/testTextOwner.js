// Importing the textNotary Smart Contract ABI (JSON representation of the Smart Contract)
const TextOwner = artifacts.require("TextOwner");

var accounts; // List of development accounts provided by Truffle
var owner; // Global variable use it in the tests cases

// This called the texttNotary Smart contract and initialize it
contract('TextOwner', (accs) => {
    accounts = accs; // Assigning test accounts
    owner = accounts[0]; // Assigning the owner test account
});

// Example test case, it will test if the contract is able to return the text property 
// initialized in the contract constructor
it('has correct name', async () => {
    let instance = await TextOwner.deployed(); // Making sure the Smart Contract is deployed and getting the instance.
    let text = await instance.text.call(); // Calling the text property
    assert.equal(text, "Awesome"); // Assert if the text property was initialized correctly
});

// Example test case, it will test is the Smart Contract function claimText assigned the text to the owner address
it('can be claimed', async () => {
    let instance = await TextOwner.deployed(); // Making sure the Smart Contract is deployed and getting the instance.
    await instance.claimText({ from: owner }); // Calling the Smart Contract function claimText
    let textOwner = await instance.textOwner.call(); // Getting the owner address
    assert.equal(textOwner, owner); // Verifying if the owner address match with owner of the address
});

// Example test case, it will test is the Smart Contract function claimText assigned the text to the owner address and it can be changed
it('can change owners', async () => {
    let instance = await TextOwner.deployed();
    let secondUser = accounts[1];
    await instance.claimText({ from: owner });
    let textOwner = await instance.textOwner.call();
    assert.equal(textOwner, owner);
    await instance.claimText({ from: secondUser });
    let secondOwner = await instance.textOwner.call();
    assert.equal(secondOwner, secondUser);
});