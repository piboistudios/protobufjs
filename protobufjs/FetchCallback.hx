package protobufjs;

/**
	Node-style callback as used by {@link util.fetch}.
**/
typedef FetchCallback = ts.AnyOf2<(error:js.lib.Error) -> Void, (error:js.lib.Error, contents:String) -> Void>;