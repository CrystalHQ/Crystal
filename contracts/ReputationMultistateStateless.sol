import "./ReputationBase.sol";
contract ReputationMultistateStateless is ReputationBase{
  ReputationTypes thistype = ReputationTypes.Multistate;
	enum States { }
	States state;
  function lookup(uint id) returns (address adr) {}
	function reputationOf (address _agent) returns (States state) {}
	function ratingOf(uint _content) returns (States state) {}
}
