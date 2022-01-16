package protobufjs;

/**
	Wire format writer using node buffers.
**/
@:jsRequire("protobufjs", "BufferWriter") extern class BufferWriter extends Writer {
	/**
		Constructs a new buffer writer instance.
	**/
	function new();
	/**
		Finishes the write operation.
	**/
	public function finish():Buffer;
	static var prototype : BufferWriter;
	/**
		Allocates a buffer of the specified size.
	**/
	public static function alloc(size:Float):Buffer;
}