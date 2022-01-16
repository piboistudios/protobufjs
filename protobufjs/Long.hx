package protobufjs;

/**
	Any compatible Long instance.
	This is a minimal stand-alone definition of a Long instance. The actual type is that exported by long.js.
**/
typedef Long = {
	/**
		Low bits
	**/
	var low : Float;
	/**
		High bits
	**/
	var high : Float;
	/**
		Whether unsigned or not
	**/
	var unsigned : Bool;
};