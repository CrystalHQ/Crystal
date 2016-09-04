//Holds information abuot the trust graph and trust values, which are computed by values.js
contract TrustGraph is ReputationValueStatefull{

    //Basic values for reputation standard.
    function minimumValueOf(bytes32 _value) constant returns(int min){
        min = -1;
    }
    function maximumValueOf(bytes32 _value) constant returns (int max){
        max = 1;
    }
    
    //
    //Holds start sets
    mapping (uint community => address[] startset) startsets;
    
    //Holds list of values (mapped sequentially to a number)
    mapping (uint valueID => bytes32 value) values;
    
    //Returns a list of all the values that an individual has been rated on (by iterating over the mapping)
    function getReputationTypes() returns (bytes32[] _values) {}
    
    //Adds a new value to the system
    function addReputationType(bytes32 _hash) returns (bool success) {}
    
    //Allows an individual to rate another individual in a specific value.  The rating must be between -1 and 1
    function rateUser(int rating, address _ratee, bytes32 _valuename, uint _community) returns (bool success) {}
   
   //This is part of our standard but doesn't exist for this reputation type. We should split the reputation types in the future to content ratings and user ratings to avoid useless functions like this 
    function rateContent(int rating, uint _content, bytes32 _rephash, uint _community) returns (bool success) {throw;}
    
    //Gets the valuescore of an individual, this is actually calculated offchain for the Proof of Concept and is simply data here
    function reputationOf (address _agent, bytes32 _rephash, _uint _community) returns (uint range) {}
    
}