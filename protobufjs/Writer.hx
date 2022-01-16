package protobufjs;

/**
	Wire format writer using `Uint8Array` if available, otherwise `Array`.
**/
@:jsRequire("protobufjs", "Writer") extern class Writer {
	/**
		Constructs a new writer instance.
	**/
	function new();
	/**
		Current length.
	**/
	public var len : Float;
	/**
		Operations head.
	**/
	public var head : Dynamic;
	/**
		Operations tail
	**/
	public var tail : Dynamic;
	/**
		Linked forked states.
	**/
	public var states : Null<Dynamic>;
	/**
		Writes an unsigned 32 bit value as a varint.
	**/
	public function uint32(value:Float):Writer;
	/**
		Writes a signed 32 bit value as a varint.
	**/
	public function int32(value:Float):Writer;
	/**
		Writes a 32 bit value as a varint, zig-zag encoded.
	**/
	public function sint32(value:Float):Writer;
	/**
		Writes an unsigned 64 bit value as a varint.
	**/
	public function uint64(value:ts.AnyOf3<String, Float, Long>):Writer;
	/**
		Writes a signed 64 bit value as a varint.
	**/
	public function int64(value:ts.AnyOf3<String, Float, Long>):Writer;
	/**
		Writes a signed 64 bit value as a varint, zig-zag encoded.
	**/
	public function sint64(value:ts.AnyOf3<String, Float, Long>):Writer;
	/**
		Writes a boolish value as a varint.
	**/
	public function bool(value:Bool):Writer;
	/**
		Writes an unsigned 32 bit value as fixed 32 bits.
	**/
	public function fixed32(value:Float):Writer;
	/**
		Writes a signed 32 bit value as fixed 32 bits.
	**/
	public function sfixed32(value:Float):Writer;
	/**
		Writes an unsigned 64 bit value as fixed 64 bits.
	**/
	public function fixed64(value:ts.AnyOf3<String, Float, Long>):Writer;
	/**
		Writes a signed 64 bit value as fixed 64 bits.
	**/
	public function sfixed64(value:ts.AnyOf3<String, Float, Long>):Writer;
	/**
		Writes a float (32 bit).
	**/
	public function float(value:Float):Writer;
	/**
		Writes a double (64 bit float).
	**/
	public function double(value:Float):Writer;
	/**
		Writes a sequence of bytes.
	**/
	public function bytes(value:ts.AnyOf2<String, js.lib.Uint8Array>):Writer;
	/**
		Writes a string.
	**/
	public function string(value:String):Writer;
	/**
		Forks this writer's state by pushing it to a stack.
		Calling {@link Writer#reset|reset} or {@link Writer#ldelim|ldelim} resets the writer to the previous state.
	**/
	public function fork():Writer;
	/**
		Resets this instance to the last state.
	**/
	public function reset():Writer;
	/**
		Resets to the last state and appends the fork state's current write length as a varint followed by its operations.
	**/
	public function ldelim():Writer;
	/**
		Finishes the write operation.
	**/
	public function finish():js.lib.Uint8Array;
	static var prototype : Writer;
	/**
		Creates a new writer.
	**/
	public static function create():ts.AnyOf2<Writer, BufferWriter>;
	/**
		Allocates a buffer of the specified size.
	**/
	public static function alloc(size:Float):js.lib.Uint8Array;
}