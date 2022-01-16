package protobufjs.util;

/**
	Begins generating a function.
	
	Begins generating a function.
**/
@:jsRequire("protobufjs", "util.codegen") @valueModuleOnly extern class Codegen {
	/**
		Begins generating a function.
	**/
	@:overload(function(?functionName:String):protobufjs.Codegen { })
	@:selfCall
	static function call(functionParams:Array<String>, ?functionName:String):protobufjs.Codegen;
	/**
		When set to `true`, codegen will log generated code to console. Useful for debugging.
	**/
	static var verbose : Bool;
}