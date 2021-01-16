pragma solidity 0.5.1;
contract Computer_State{
    enum State { Running, ShutDown, SavedState, Hibernated, Sleeped, Terminated }
    State public state;
    
    constructor() public {
        state = State.Running;
    }
    function Terminate_Computer() public {
        state = State.Terminated;
    }
    function Start_Computer() public {
        state = State.Running;
    }
    function Stut_Down_Computer() public {
        state = State.ShutDown;
    }
    function Hibernate_Computer() public {
        state = State.Hibernated;
    }
	function Sleep_Computer() public {
	    state = State.Sleeped;
	}
	function Save_Computer_State() public {
	    state = State.SavedState
	}
}