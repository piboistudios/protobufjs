package protobufjs;

/**
	Reflected service method.
**/
@:jsRequire("protobufjs", "Method") extern class Method extends ReflectionObject {
	/**
		Constructs a new service method instance.
	**/
	function new(name:String, type:Null<String>, requestType:String, responseType:String, ?requestStream:ts.AnyOf2<Bool, { }>, ?responseStream:ts.AnyOf2<Bool, { }>, ?options:{ }, ?comment:String, ?parsedOptions:{ });
	/**
		Method type.
	**/
	public var type : String;
	/**
		Request type.
	**/
	public var requestType : String;
	/**
		Whether requests are streamed or not.
	**/
	@:optional
	public var requestStream : Bool;
	/**
		Response type.
	**/
	public var responseType : String;
	/**
		Whether responses are streamed or not.
	**/
	@:optional
	public var responseStream : Bool;
	/**
		Resolved request type.
	**/
	public var resolvedRequestType : Null<Type_>;
	/**
		Resolved response type.
	**/
	public var resolvedResponseType : Null<Type_>;
	/**
		Converts this method to a method descriptor.
	**/
	public function toJSON(?toJSONOptions:IToJSONOptions):IMethod;
	static var prototype : Method;
	/**
		Constructs a method from a method descriptor.
	**/
	public static function fromJSON(name:String, json:IMethod):Method;
}