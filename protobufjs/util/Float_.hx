package protobufjs.util;

/**
	Reads / writes floats / doubles from / to buffers.
**/
@:jsRequire("protobufjs", "util.float") @valueModuleOnly extern class Float_ {
	/**
		Writes a 32 bit float to a buffer using little endian byte order.
	**/
	static function writeFloatLE(val:Float, buf:js.lib.Uint8Array, pos:Float):Void;
	/**
		Writes a 32 bit float to a buffer using big endian byte order.
	**/
	static function writeFloatBE(val:Float, buf:js.lib.Uint8Array, pos:Float):Void;
	/**
		Reads a 32 bit float from a buffer using little endian byte order.
	**/
	static function readFloatLE(buf:js.lib.Uint8Array, pos:Float):Float;
	/**
		Reads a 32 bit float from a buffer using big endian byte order.
	**/
	static function readFloatBE(buf:js.lib.Uint8Array, pos:Float):Float;
	/**
		Writes a 64 bit double to a buffer using little endian byte order.
	**/
	static function writeDoubleLE(val:Float, buf:js.lib.Uint8Array, pos:Float):Void;
	/**
		Writes a 64 bit double to a buffer using big endian byte order.
	**/
	static function writeDoubleBE(val:Float, buf:js.lib.Uint8Array, pos:Float):Void;
	/**
		Reads a 64 bit double from a buffer using little endian byte order.
	**/
	static function readDoubleLE(buf:js.lib.Uint8Array, pos:Float):Float;
	/**
		Reads a 64 bit double from a buffer using big endian byte order.
	**/
	static function readDoubleBE(buf:js.lib.Uint8Array, pos:Float):Float;
}