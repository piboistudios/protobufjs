package protobufjs;

/**
	Base class of all reflection objects.
**/
@:jsRequire("protobufjs", "ReflectionObject") extern class ReflectionObject {
	function new();
	/**
		Options.
	**/
	@:optional
	public var options : { };
	/**
		Parsed Options.
	**/
	@:optional
	public var parsedOptions : { };
	/**
		Unique name within its namespace.
	**/
	public var name : String;
	/**
		Parent namespace.
	**/
	public var parent : Null<Namespace>;
	/**
		Whether already resolved or not.
	**/
	public var resolved : Bool;
	/**
		Comment text, if any.
	**/
	public var comment : Null<String>;
	/**
		Defining file name.
	**/
	public var filename : Null<String>;
	/**
		Reference to the root namespace.
	**/
	public final root : Root;
	/**
		Full name including leading dot.
	**/
	public final fullName : String;
	/**
		Converts this reflection object to its descriptor representation.
	**/
	public function toJSON():{ };
	/**
		Called when this object is added to a parent.
	**/
	public function onAdd(parent:ReflectionObject):Void;
	/**
		Called when this object is removed from a parent.
	**/
	public function onRemove(parent:ReflectionObject):Void;
	/**
		Resolves this objects type references.
	**/
	public function resolve():ReflectionObject;
	/**
		Gets an option value.
	**/
	public function getOption(name:String):Dynamic;
	/**
		Sets an option.
	**/
	public function setOption(name:String, value:Dynamic, ?ifNotSet:Bool):ReflectionObject;
	/**
		Sets a parsed option.
	**/
	public function setParsedOption(name:String, value:Dynamic, propName:String):ReflectionObject;
	/**
		Sets multiple options.
	**/
	public function setOptions(options:{ }, ?ifNotSet:Bool):ReflectionObject;
	/**
		Converts this instance to its string representation.
	**/
	public function toString():String;
	static var prototype : ReflectionObject;
}