package protobufjs.rpc;

/**
	An RPC service as returned by {@link Service#create}.
**/
@:jsRequire("protobufjs", "rpc.Service") extern class Service extends protobufjs.util.EventEmitter {
	/**
		Constructs a new RPC service instance.
	**/
	function new(rpcImpl:protobufjs.RPCImpl, ?requestDelimited:Bool, ?responseDelimited:Bool);
	/**
		RPC implementation. Becomes `null` once the service is ended.
	**/
	@:optional
	public dynamic function rpcImpl(method:ts.AnyOf2<protobufjs.Method, ServiceMethod<protobufjs.Message<{ }>, protobufjs.Message<{ }>>>, requestData:js.lib.Uint8Array, callback:protobufjs.RPCImplCallback):Void;
	/**
		Whether requests are length-delimited.
	**/
	public var requestDelimited : Bool;
	/**
		Whether responses are length-delimited.
	**/
	public var responseDelimited : Bool;
	/**
		Calls a service method through {@link rpc.Service#rpcImpl|rpcImpl}.
	**/
	public function rpcCall<TReq, TRes>(method:ts.AnyOf2<protobufjs.Method, ServiceMethod<TReq, TRes>>, requestCtor:protobufjs.Constructor<TReq>, responseCtor:protobufjs.Constructor<TRes>, request:ts.AnyOf2<TReq, { /** Reference to the reflected type. **/ @:optional @:native("$type") var DollarType : Dynamic; /** Converts this message to JSON. **/ @:optional dynamic function toJSON():{ }; }>, callback:ServiceMethodCallback<TRes>):Void;
	/**
		Ends this service and emits the `end` event.
	**/
	public function end(?endedByRPC:Bool):Service;
	/**
		Registers an event listener.
	**/
	public function on(evt:String, fn:protobufjs.EventEmitterListener, ?ctx:Dynamic):Service;
	/**
		Removes an event listener or any matching listeners if arguments are omitted.
	**/
	public function off(?evt:String, ?fn:protobufjs.EventEmitterListener):Service;
	/**
		Emits an event by calling its listeners with the specified arguments.
	**/
	public function emit(evt:String, args:haxe.extern.Rest<Dynamic>):Service;
	static var prototype : Service;
}