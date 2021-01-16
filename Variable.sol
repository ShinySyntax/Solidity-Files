pragma solidity 0.5.1;
contract variable_ex {
    string variable;
    
    constructor() public {
        variable = "Default";
        
    }
    function get() public view returns(string memory) {
        return variable;
    }
    function set(string memory variableset) public {
        variable = variableset;
    }
}