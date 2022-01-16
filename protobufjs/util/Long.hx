package protobufjs.util;

/**
	Long.js's Long class if available.
**/
@:jsRequire("protobufjs", "util.Long") extern class Long {
	function new(params:haxe.extern.Rest<Dynamic>);
	static var prototype : protobufjs.Long;
	/**
		Calls the function, substituting the specified object for the this value of the function, and the specified array for the arguments of the function.
	**/
	static function apply(thisArg:Dynamic, ?argArray:Dynamic):Dynamic;
	/**
		Calls a method of an object, substituting another object for the current object.
	**/
	static function call(thisArg:Dynamic, argArray:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		For a given function, creates a bound function that has the same body as the original function.
		The this object of the bound function is associated with the specified object, and has the specified initial parameters.
	**/
	static function bind(thisArg:Dynamic, argArray:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Returns a string representation of a function.
	**/
	static function toString():String;
	static final length : Float;
	static var arguments : Dynamic;
	static var caller : haxe.Constraints.Function;
	/**
		Returns the name of the function. Function names are read-only and can not be changed.
	**/
	static final name : String;
}