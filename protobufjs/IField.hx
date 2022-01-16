package protobufjs;

/**
	Field descriptor.
**/
typedef IField = {
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