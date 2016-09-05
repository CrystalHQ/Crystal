//Contract that defines standard for statefull reputation that can be updated by giving numerical values to content or users.
import "./ReputationValueStateless.sol";
contract ReputationValueStatefull is ReputationValueStateless{
    
    //Function that allows a user to add a new type of reputation to a contract.
    function addReputationType(bytes32 _hash) returns (bool success) {}
    
    //function that allows an individual user to rate a piece of content with a specific rep type in a specific community.
	function rateContent(int rating, uint _content, bytes32 _rephash, uint _community) returns (bool success) {}
	
	//function that allows an individual user to rate another user with a specific rep type in a specific community
	function rateUser(int rating, address _ratee, bytes32 _rephash, uint _community) returns (bool success) {}
}
