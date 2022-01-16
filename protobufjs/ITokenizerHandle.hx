package protobufjs;

/**
	Handle object returned from {@link tokenize}.
**/
typedef ITokenizerHandle = {
	/**
		Gets the next token and advances (`null` on eof)
	**/
	dynamic function next():Null<String>;
	/**
		Peeks for the next token (`null` on eof)
	**/
	dynamic function peek():Null<String>;
	/**
		Pushes a token back to the stack
	**/
	dynamic function push(token:String):Void;
	/**
		Skips a token, returns its presence and advances or, if non-optional and not present, throws
	**/
	dynamic function skip(expected:String, ?optional:Bool):Bool;
	/**
		Gets the comment on the previous line or the line comment on the specified line, if any
	**/
	dynamic function cmnt(?line:Float):Null<String>;
	/**
		Current line number
	**/
	var line : Float;
};