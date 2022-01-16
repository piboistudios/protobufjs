package protobufjs.common;

/**
	Properties of a google.protobuf.Any message.
**/
typedef IAny = {
	@:optional
	var typeUrl : String;
	@:optional
	var bytes : js.lib.Uint8Array;
};