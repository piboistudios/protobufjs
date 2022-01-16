package protobufjs;

/**
	RPC implementation passed to {@link Service#create} performing a service request on network level, i.e. by utilizing http requests or websockets.
**/
typedef RPCImpl = (method:ts.AnyOf2<Method, protobufjs.rpc.ServiceMethod<Message<{ }>, Message<{ }>>>, requestData:js.lib.Uint8Array, callback:RPCImplCallback) -> Void;