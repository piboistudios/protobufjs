package protobufjs.util;

/**
	A minimal UTF8 implementation for number arrays.
**/
@:jsRequire("protobufjs", "util.utf8") @valueModuleOnly extern class Utf8 {
	/**
		Calculates the UTF8 byte length of a string.
	**/
	static function length(string:String):Float;
	/**
		Reads UTF8 bytes as a string.
	**/
	static function read(buffer:js.lib.Uint8Array, start:Float, end:Float):String;
	/**
		Writes a string as UTF8 bytes.
	**/
	static function write(string:String, buffer:js.lib.Uint8Array, offset:Float):Float;
}