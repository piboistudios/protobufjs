package protobufjs.common;

/**
	Properties of a google.protobuf.Value message.
**/
typedef IValue = {
	@:optional
	var kind : String;
	@:optional
	var nullValue : Int;
	@:optional
	var numberValue : Float;
	@:optional
	var stringValue : String;
	@:optional
	var boolValue : Bool;
	@:optional
	var structValue : IStruct;
	@:optional
	var listValue : IListValue;
};