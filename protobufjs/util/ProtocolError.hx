package protobufjs.util;

/**
	Error subclass indicating a protocol specifc error.
**/
@:jsRequire("protobufjs", "util.ProtocolError") extern class ProtocolError<T> extends js.lib.Error {
	/**
		Constructs a new protocol error.
	**/
	function new(message:String, ?properties:{ });
	/**
		So far decoded message instance.
	**/
	public var instance : protobufjs.Message<T>;
	static var prototype : ProtocolError<Dynamic>;
}