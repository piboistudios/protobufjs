package protobufjs;

/**
	Reflected service.
**/
@:jsRequire("protobufjs", "Service") extern class Service extends NamespaceBase {
	/**
		Constructs a new service instance.
	**/
	function new(name:String, ?options:{ });
	/**
		Service methods.
	**/
	public var methods : { };
	/**
		Converts this service to a service descriptor.
	**/
	public function toJSON(?toJSONOptions:IToJSONOptions):IService;
	/**
		Methods of this service as an array for iteration.
	**/
	public final methodsArray : Array<Method>;
	/**
		Creates a runtime service using the specified rpc implementation.
	**/
	public function create(rpcImpl:RPCImpl, ?requestDelimited:Bool, ?responseDelimited:Bool):protobufjs.rpc.Service;
	static var prototype : Service;
	/**
		Constructs a service from a service descriptor.
	**/
	public static function fromJSON(name:String, json:IService):Service;
}