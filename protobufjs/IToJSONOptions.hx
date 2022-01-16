package protobufjs;

/**
	Options modifying the behavior of JSON serialization.
**/
typedef IToJSONOptions = {
	/**
		Serializes comments.
	**/
	@:optional
	var keepComments : Bool;
};