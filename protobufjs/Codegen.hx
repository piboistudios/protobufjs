package protobufjs;

/**
	Appends code to the function's body or finishes generation.
**/
typedef Codegen = ts.AnyOf2<() -> ts.AnyOf2<haxe.Constraints.Function, Codegen>, (formatStringOrScope:ts.AnyOf2<String, { }>) -> ts.AnyOf2<haxe.Constraints.Function, Codegen>>;