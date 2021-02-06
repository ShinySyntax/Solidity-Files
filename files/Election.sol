pragma solidity ^0.4.21;
contract Election {
    struct Candidate {
        string name;
        uint voteCount;
    }
    struct Voter {
        bool authorized;
        bool voted;
        uint vote;
    }
    address public owner;
    string public electionName;
    mapping(address => Voter)public Voters;
    Candidate[] public candidates;
    uint public totalVotes;
    modifier ownerOnly() {
        require(msg.sender == owner);
        _;
    }
    function Election(string _name) public {
        owner == msg.sender;
        electionName = "Which Company is the best?";
    }
    function addCandidate(string name) ownerOnly public {
        candidates.push((Candidate(name, 0)));
        
    }
    function getNumCandidate() public view returns(uint) {
        return candidates.length;
    }
    function authorize (address person)ownerOnly public {
        Voters[person].authorized = true;
    }
    function vote(uint voteIndex) public {
        require(!Voters[msg.sender].voted);
        require(Voters[msg.sender].authorized);
        Voters[msg.sender].vote = voteIndex;
        Voters[msg.sender].voted = true;
        candidates[voteIndex].voteCount += 1;
        totalVotes += 1;
    }
    function end()ownerOnly public{
        selfdestruct(owner);
    }
}
