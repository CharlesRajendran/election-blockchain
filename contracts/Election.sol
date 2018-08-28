pragma solidity ^0.4.23;

contract Election {

    // struct is just a syntactic sugar, meaning, it is just an array and elemenets are accessed like arrays
    // it cannot be access like candidate.id, but insted it should be used like candidate[0]
    struct Candidate {
        uint id;
        string name;
        uint voteCount;
    }

    // candidate count 
    // state variables - if the state variable is changed, that means, blockchain state is changed
    // public state variable's will get a getter function 
    uint public candidateCount;

    // mapping is equivalent to asscociative arrays
    mapping(uint => Candidate) public listOfCandidate;

    // contructer will be called once when we deploy the contract only
    constructor() public {
        addCandidate("Vijay");
        addCandidate("Ajith");
        addCandidate("Surya");
    }

    // this function should be only modified by the smart contract (even not by the owner of the smart contract)
    function addCandidate(string _name) private {
        candidateCount ++;
        listOfCandidate[candidateCount] = Candidate(candidateCount, _name, 0);
    }
}