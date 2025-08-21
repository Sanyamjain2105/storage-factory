// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;
import {SimpleStorage} from "./SimpleStorage.sol";


contract addFive is SimpleStorage{    // imherited simplestorage contract in addfive contract

    function sayHello() public pure returns(string memory) {
        return "Helloo";
    }

    function addfive() public returns(uint256){  // adds 5 and then stores using parent contract function
        uint256 newNumber = retrieve() + 5;
        super.store(newNumber);  // super keyword is used to class parent contract function which has been overriden
        return newNumber;
    }

    function store(uint256 _favnum) public override {
        myFavoriteNumber = _favnum+5;
    }
    
}