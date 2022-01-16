package protobufjs;

/**
	Map field descriptor.
**/
typedef IMapField = {
	/**
		Key type
	**/
	var keyType : String;
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