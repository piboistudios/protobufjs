package protobufjs;

/**
	A node-style callback as used by {@link load} and {@link Root#load}.
**/
typedef LoadCallback = ts.AnyOf2<(error:Null<js.lib.Error>) -> Void, (error:Null<js.lib.Error>, root:Root) -> Void>;