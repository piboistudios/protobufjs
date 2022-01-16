package protobufjs.rpc;

/**
	A service method part of a {@link rpc.Service} as created by {@link Service.create}.
**/
typedef ServiceMethod<TReq, TRes> = ts.AnyOf2<(request:ts.AnyOf2<TReq, { /** Reference to the reflected type. **/ @:optional @:native("$type") var DollarType : Dynamic; /** Converts this message to JSON. **/ @:optional dynamic function toJSON():{ }; }>) -> js.lib.Promise<protobufjs.Message<TRes>>, (request:ts.AnyOf2<TReq, { /** Reference to the reflected type. **/ @:optional @:native("$type") var DollarType : Dynamic; /** Converts this message to JSON. **/ @:optional dynamic function toJSON():{ }; }>, callback:ServiceMethodCallback<TRes>) -> js.lib.Promise<protobufjs.Message<TRes>>>;