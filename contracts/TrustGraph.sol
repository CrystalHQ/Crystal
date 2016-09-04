//Holds information abuot the trust graph and trust values, which are computed by values.js
contract TrustGraph is ReputationValueStateless{

    //Basic values for reputation standard.
    function minimumValueOf() constant returns(int min){
        min = -1;
    }
    function maximumValueOf constant returns (int max){
        max = 1;
    }
    
    //Holds start sets
    mapping (uint community => address[] startset) startsets;
    
    //Holds list of values (mapped sequentially to a number)
    mapping (uint valueID => bytes32 value) values;
    
    //Allows an individual to rate another individual in a specific value.  The rating must be between -1 and 1
    function addRating(uint _value, fixed _rating) returns (bool success){}
    
    //Gets the valuescore of an individual 
    function reputationOf (uint _valueid, )
    
}