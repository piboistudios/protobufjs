package protobufjs;

/**
	Callback as used by {@link util.asPromise}.
**/
typedef AsPromiseCallback = (error:Null<js.lib.Error>, params:haxe.extern.Rest<Dynamic>) -> Void;