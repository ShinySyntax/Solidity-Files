pragma solidity ^0.4.24;
contract Message_SEND_AND_RECIEVE {
    string message ;
    
    function SEND(string message_to_send) public {
        message = message_to_send;
    }
    function RETRIEVE() public constant returns(string) {
        return message;
    }
}