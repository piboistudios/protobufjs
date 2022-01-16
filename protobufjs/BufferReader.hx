package protobufjs;

/**
	Wire format reader using node buffers.
**/
@:jsRequire("protobufjs", "BufferReader") extern class BufferReader extends Reader {
	/**
		Constructs a new buffer reader instance.
	**/
	function new(buffer:Buffer);
	/**
		Reads a sequence of bytes preceeded by its length as a varint.
	**/
	public function bytes():Buffer;
	static var prototype : BufferReader;
}