package protobufjs;

/**
	Service descriptor.
**/
typedef IService = {
	/**
		Method descriptors
	**/
	var methods : { };
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