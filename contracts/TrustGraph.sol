//Holds information abuot the trust graph and trust values, which are computed by values.js
import "ReputationValueStatefull.sol";
contract TrustGraph is ReputationValueStatefull{

    //Basic values for reputation standard.
    function minimumValueOf(bytes32 _value) constant returns(int min){
        min = -1;
    }
    function maximumValueOf(bytes32 _value) constant returns (int max){
        max = 1;
    }
    
    //Returns the Valuescore for the value a given individual in a given community
    function reputationOf (address _agent, bytes32 _rephash, uint _community) returns (uint range) {}
    
    
    //
    //Holds start sets
    mapping (uint => address[]) startsets;
    
    //Holds list of values (mapped sequentially to a number)
    mapping (uint => bytes32) values;
    
    //Returns a list of all the values that exist in the system
    function getReputationTypes() returns (bytes32[] _values) {}
    
    //Adds a new value to the system
    function addReputationType(bytes32 _hash) returns (bool success) {}
    
    //Allows an individual to rate another individual in a specific value.  The rating must be between -1 and 1
    function rateUser(int rating, address _ratee, bytes32 _valuename, uint _community) returns (bool success) {}
   
   //These are part of our standard but don't exist for this reputation type. We should split the reputation types in the future to content ratings and user ratings to avoid useless functions like this 
    function rateContent(int rating, uint _content, bytes32 _rephash, uint _community) returns (bool success) {throw;}
    function ratingOf(uint _content, bytes32 _rephash, uint _community) returns (uint range) {throw;}
}