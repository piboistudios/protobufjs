package protobufjs;

/**
	Method descriptor.
**/
typedef IMethod = {
	/**
		Method type
	**/
	@:optional
	var type : String;
	/**
		Request type
	**/
	var requestType : String;
	/**
		Response type
	**/
	var responseType : String;
	/**
		Whether requests are streamed
	**/
	@:optional
	var requestStream : Bool;
	/**
		Whether responses are streamed
	**/
	@:optional
	var responseStream : Bool;
	/**
		Method options
	**/
	@:optional
	var options : { };
	/**
		Method comments
	**/
	var comment : String;
	/**
		Method options properly parsed into an object
	**/
	@:optional
	var parsedOptions : { };
};