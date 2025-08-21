// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;
import {SimpleStorage} from "./SimpleStorage.sol";

contract StorageFactory{
    SimpleStorage[] public listSimpleStorage;
    function create() public{
        listSimpleStorage.push(new SimpleStorage());
    }

    function setter(uint256 _ind, uint _favnum) public{
        SimpleStorage simpleStorage = listSimpleStorage[_ind];
        simpleStorage.store(_favnum);
    }

    function getter(uint256 _ind) public view returns(uint256) {
        SimpleStorage simpleStorage = listSimpleStorage[_ind];
        return simpleStorage.retrieve();
    }

    
}