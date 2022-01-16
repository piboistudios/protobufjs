package protobufjs.rpc;

/**
	A service method callback as used by {@link rpc.ServiceMethod|ServiceMethod}.
	
	Differs from {@link RPCImplCallback} in that it is an actual callback of a service method which may not return `response = null`.
**/
typedef ServiceMethodCallback<TRes> = ts.AnyOf2<(error:Null<js.lib.Error>) -> Void, (error:Null<js.lib.Error>, response:TRes) -> Void>;