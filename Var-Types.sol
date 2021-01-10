pragma solidity 0.8.0;
contract Var_TypesCon {
    string public stringVar = "Default";
    bool public boolvar = true;
    int public intvar = 1;
    uint public uintvar = 1;
    uint8 public uint8var = 8;
    uint256 public uint256var = 99999;
    function cstringVar(string memory stringVar1) public {
        stringVar = stringVar1;
    }
    function booltrue() public {
        boolvar = true;
    }
    function boolfalse() public {
        boolvar = false;
    }
    function cintvar(int intvar1) public {
        intvar = intvar1;
    }
    function cuintvar(uint uintvar1) public {
        uintvar = uintvar1;
    }
    function cintvar8(uint8 uint8var1) public {
        uint8var = uint8var1;
    }
    function cuint256(uint256 uint256var1) public {
        uint256var = uint256var1
    }   
}
