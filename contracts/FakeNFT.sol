// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;


//import ERC721 contract from OpenZeppelin
import "@openzeppelin/contracts/token/ERC721/ERC721.sol";

//declare a contract called FakeNFT which is inherited from ERC721
contract FakeNFT is ERC721 {
    //declare a variable called tokenId with the value of 1
    uint256 tokenId = 1;
    //declare a constant variable called price and set it to 0.01 ether
    uint256 constant price = 0.01 ether;

    //constructor: calls the ERC721 constructor, passing in the two strings "FAKE" and "FAKE"
    constructor() ERC721("FAKE", "FAKE") {}

    //declare a public function called mint which is payable
    function mint() public payable {
        //require that the value sent with the transaction is equal to the price variable
        require(msg.value == price, "Ether sent is incorrect");
        //call the _mint function, passing in the msg.sender address and the tokenId variable
        _mint(msg.sender, tokenId);
        //increment the tokenId variable by 1
        tokenId += 1;
    }
}