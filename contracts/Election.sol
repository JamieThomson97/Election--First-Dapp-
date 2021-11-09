pragma solidity >=0.4.22 <=0.8.10;

contract Election {
    struct Candidate {
        uint256 id;
        string name;
        uint256 voteCount;
    }

    function addCandidate(string memory name) private {
        candidateCount++;
        candidates[candidateCount] = Candidate(candidateCount, name, 0);
    }

    mapping(uint256 => Candidate) public candidates;
    uint256 public candidateCount;

    string public candidate;

    constructor() public {
        addCandidate("Jamie");
        addCandidate("James");
        addCandidate("Philip");
    }
}
