package protobufjs;

/**
	Wire format reader using `Uint8Array` if available, otherwise `Array`.
**/
@:jsRequire("protobufjs", "Reader") extern class Reader {
	/**
		Constructs a new reader instance using the specified buffer.
	**/
	function new(buffer:js.lib.Uint8Array);
	/**
		Read buffer.
	**/
	public var buf : js.lib.Uint8Array;
	/**
		Read buffer position.
	**/
	public var pos : Float;
	/**
		Read buffer length.
	**/
	public var len : Float;
	/**
		Reads a varint as an unsigned 32 bit value.
	**/
	public function uint32():Float;
	/**
		Reads a varint as a signed 32 bit value.
	**/
	public function int32():Float;
	/**
		Reads a zig-zag encoded varint as a signed 32 bit value.
	**/
	public function sint32():Float;
	/**
		Reads a varint as a signed 64 bit value.
	**/
	public function int64():Long;
	/**
		Reads a varint as an unsigned 64 bit value.
	**/
	public function uint64():Long;
	/**
		Reads a zig-zag encoded varint as a signed 64 bit value.
	**/
	public function sint64():Long;
	/**
		Reads a varint as a boolean.
	**/
	public function bool():Bool;
	/**
		Reads fixed 32 bits as an unsigned 32 bit integer.
	**/
	public function fixed32():Float;
	/**
		Reads fixed 32 bits as a signed 32 bit integer.
	**/
	public function sfixed32():Float;
	/**
		Reads fixed 64 bits.
	**/
	public function fixed64():Long;
	/**
		Reads zig-zag encoded fixed 64 bits.
	**/
	public function sfixed64():Long;
	/**
		Reads a float (32 bit) as a number.
	**/
	public function float():Float;
	/**
		Reads a double (64 bit float) as a number.
	**/
	public function double():Float;
	/**
		Reads a sequence of bytes preceeded by its length as a varint.
	**/
	public function bytes():js.lib.Uint8Array;
	/**
		Reads a string preceeded by its byte length as a varint.
	**/
	public function string():String;
	/**
		Skips the specified number of bytes if specified, otherwise skips a varint.
	**/
	public function skip(?length:Float):Reader;
	/**
		Skips the next element of the specified wire type.
	**/
	public function skipType(wireType:Float):Reader;
	static var prototype : Reader;
	/**
		Creates a new reader using the specified buffer.
	**/
	public static function create(buffer:ts.AnyOf2<Buffer, js.lib.Uint8Array>):ts.AnyOf2<Reader, BufferReader>;
}