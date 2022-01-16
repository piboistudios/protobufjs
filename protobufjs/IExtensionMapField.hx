package protobufjs;

/**
	Extension map field descriptor.
**/
typedef IExtensionMapField = {
	/**
		Extended type
	**/
	var extend : String;
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