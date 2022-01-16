package protobufjs;

/**
	Namespace descriptor.
**/
typedef INamespace = {
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