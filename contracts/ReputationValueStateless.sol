import "./ReputationBase.sol";
contract ReputationValueStateless is ReputationBase{
	ReputationTypes thistype = ReputationTypes.Value;
	function addReputationType(bytes32 _hash) returns (bool success) {}
	function getReputationTypes() returns (bytes32[] hash) {}
	function minimumValueOf(bytes32 _rephash, uint _community) constant returns (int minimum) {}
	function maximumValueOf(bytes32_rephash, uint _community) constant returns (int maximum) {}
	function reputationOf (address _agent, bytes32 _rephash, _uint _community) returns (uint range) {}
	function ratingOf(uint _content, bytes32 _rephash, uint _community) returns (uint range) {}
}
