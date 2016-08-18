// This is boilerplate to create a Crystal compatible reputation system.
contract ContentTypeBoilerPlate {
	struct ContentType{
		bytes8 name;
		bytes32 description;
	}
		struct ContentRating {
			bytes32 thing_id;
			bytes32 who_rated_id;
			bytes32 rating_type_id;
			uint32 Rating_value;
			bytes32 reputation_type;
		}
}
