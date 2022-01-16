package protobufjs.common;

/**
	Properties of a google.protobuf.Duration message.
**/
typedef IDuration = {
	@:optional
	var seconds : ts.AnyOf2<Float, protobufjs.Long>;
	@:optional
	var nanos : Float;
};