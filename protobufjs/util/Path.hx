package protobufjs.util;

/**
	A minimal path module to resolve Unix, Windows and URL paths alike.
**/
@:jsRequire("protobufjs", "util.path") @valueModuleOnly extern class Path {
	/**
		Tests if the specified path is absolute.
	**/
	static function isAbsolute(path:String):Bool;
	/**
		Normalizes the specified path.
	**/
	static function normalize(path:String):String;
	/**
		Resolves the specified include path against the specified origin path.
	**/
	static function resolve(originPath:String, includePath:String, ?alreadyNormalized:Bool):String;
}