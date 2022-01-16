package protobufjs.common;

/**
	Properties of a google.protobuf.Timestamp message.
**/
typedef ITimestamp = {
	@:optional
	var seconds : ts.AnyOf2<Float, protobufjs.Long>;
	@:optional
	var nanos : Float;
};