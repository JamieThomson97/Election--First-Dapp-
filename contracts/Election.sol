pragma solidity >=0.4.22 <=0.8.10;

contract Election {
    string public candidate;

    constructor() public {
        candidate = "candidate 1";
    }
}