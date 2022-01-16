package protobufjs;

/**
	Reflected oneof.
**/
@:jsRequire("protobufjs", "OneOf") extern class OneOf extends ReflectionObject {
	/**
		Constructs a new oneof instance.
	**/
	function new(name:String, ?fieldNames:ts.AnyOf2<Array<String>, { }>, ?options:{ }, ?comment:String);
	/**
		Field names that belong to this oneof.
	**/
	public var oneof : Array<String>;
	/**
		Fields that belong to this oneof as an array for iteration.
	**/
	public final fieldsArray : Array<Field>;
	/**
		Converts this oneof to a oneof descriptor.
	**/
	public function toJSON(?toJSONOptions:IToJSONOptions):IOneOf;
	/**
		Adds a field to this oneof and removes it from its current parent, if any.
	**/
	public function add(field:Field):OneOf;
	/**
		Removes a field from this oneof and puts it back to the oneof's parent.
	**/
	public function remove(field:Field):OneOf;
	static var prototype : OneOf;
	/**
		Constructs a oneof from a oneof descriptor.
	**/
	public static function fromJSON(name:String, json:IOneOf):OneOf;
	/**
		OneOf decorator (TypeScript).
	**/
	public static function d<T>(fieldNames:haxe.extern.Rest<String>):OneOfDecorator;
}