package protobufjs.util;

/**
	Helper class for working with the low and high bits of a 64 bit value.
**/
@:jsRequire("protobufjs", "util.LongBits") extern class LongBits {
	/**
		Constructs new long bits.
	**/
	function new(lo:Float, hi:Float);
	/**
		Low bits.
	**/
	public var lo : Float;
	/**
		High bits.
	**/
	public var hi : Float;
	/**
		Converts this long bits to a possibly unsafe JavaScript number.
	**/
	public function toNumber(?unsigned:Bool):Float;
	/**
		Converts this long bits to a long.
	**/
	public function toLong(?unsigned:Bool):protobufjs.Long;
	/**
		Converts this long bits to a 8 characters long hash.
	**/
	public function toHash():String;
	/**
		Zig-zag encodes this long bits.
	**/
	public function zzEncode():LongBits;
	/**
		Zig-zag decodes this long bits.
	**/
	public function zzDecode():LongBits;
	/**
		Calculates the length of this longbits when encoded as a varint.
	**/
	public function length():Float;
	static var prototype : LongBits;
	/**
		Zero bits.
	**/
	public static var zero : LongBits;
	/**
		Zero hash.
	**/
	public static var zeroHash : String;
	/**
		Constructs new long bits from the specified number.
	**/
	public static function fromNumber(value:Float):LongBits;
	/**
		Constructs new long bits from a number, long or string.
	**/
	public static function from(value:ts.AnyOf3<String, Float, protobufjs.Long>):LongBits;
	/**
		Constructs new long bits from the specified 8 characters long hash.
	**/
	public static function fromHash(hash:String):LongBits;
}