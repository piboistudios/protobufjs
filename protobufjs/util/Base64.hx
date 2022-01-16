package protobufjs.util;

/**
	A minimal base64 implementation for number arrays.
**/
@:jsRequire("protobufjs", "util.base64") @valueModuleOnly extern class Base64 {
	/**
		Calculates the byte length of a base64 encoded string.
	**/
	static function length(string:String):Float;
	/**
		Encodes a buffer to a base64 encoded string.
	**/
	static function encode(buffer:js.lib.Uint8Array, start:Float, end:Float):String;
	/**
		Decodes a base64 encoded string to a buffer.
	**/
	static function decode(string:String, buffer:js.lib.Uint8Array, offset:Float):Float;
	/**
		Tests if the specified string appears to be base64 encoded.
	**/
	static function test(string:String):Bool;
}