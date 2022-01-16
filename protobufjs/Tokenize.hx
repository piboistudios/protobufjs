package protobufjs;

/**
	Tokenizes the given .proto source and returns an object with useful utility functions.
**/
@:jsRequire("protobufjs", "tokenize") @valueModuleOnly extern class Tokenize {
	/**
		Tokenizes the given .proto source and returns an object with useful utility functions.
	**/
	@:selfCall
	static function call(source:String, alternateCommentMode:Bool):ITokenizerHandle;
	/**
		Unescapes a string.
	**/
	static function unescape(str:String):String;
}