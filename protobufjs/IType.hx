package protobufjs;

/**
	Message type descriptor.
**/
typedef IType = {
	/**
		Oneof descriptors
	**/
	@:optional
	var oneofs : { };
	/**
		Field descriptors
	**/
	var fields : { };
	/**
		Extension ranges
	**/
	@:optional
	var extensions : Array<Array<Float>>;
	/**
		Reserved ranges
	**/
	@:optional
	var reserved : Array<Array<Float>>;
	/**
		Whether a legacy group or not
	**/
	@:optional
	var group : Bool;
	/**
		Namespace options
	**/
	@:optional
	var options : { };
	/**
		Nested object descriptors
	**/
	@:optional
	var nested : { };
};