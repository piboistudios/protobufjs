package protobufjs;

/**
	Options as used by {@link util.fetch}.
**/
typedef IFetchOptions = {
	/**
		Whether expecting a binary response
	**/
	@:optional
	var binary : Bool;
	/**
		If `true`, forces the use of XMLHttpRequest
	**/
	@:optional
	var xhr : Bool;
};