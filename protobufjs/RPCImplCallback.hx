package protobufjs;

/**
	Node-style callback as used by {@link RPCImpl}.
**/
typedef RPCImplCallback = ts.AnyOf2<(error:Null<js.lib.Error>) -> Void, (error:Null<js.lib.Error>, response:js.lib.Uint8Array) -> Void>;