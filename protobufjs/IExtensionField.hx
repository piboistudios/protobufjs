package protobufjs;

/**
	Extension field descriptor.
**/
typedef IExtensionField = {
	/**
		Extended type
	**/
	var extend : String;
	/**
		Field rule
	**/
	@:optional
	var rule : String;
	/**
		Field type
	**/
	var type : String;
	/**
		Field id
	**/
	var id : Float;
	/**
		Field options
	**/
	@:optional
	var options : { };
};