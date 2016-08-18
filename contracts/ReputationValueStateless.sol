import "./ReputationBase.sol";
contract ReputationValueStateless is ReputationBase{
	ReputationTypes thistype = ReputationTypes.Value;
	function minimumValueOf() constant returns (uint minimum) {}
	function maximumValueOf() constant returns (uint maximum) {}
	function reputationOf (address _agent) returns (uint range) {}
	function ratingOf(uint _content) returns (uint range) {}
}
