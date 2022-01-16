package protobufjs;

/**
	Reflected map field.
**/
@:jsRequire("protobufjs", "MapField") extern class MapField extends FieldBase {
	/**
		Constructs a new map field instance.
	**/
	function new(name:String, id:Float, keyType:String, type:String, ?options:{ }, ?comment:String);
	/**
		Key type.
	**/
	public var keyType : String;
	/**
		Resolved key type if not a basic type.
	**/
	public var resolvedKeyType : Null<ReflectionObject>;
	/**
		Converts this map field to a map field descriptor.
	**/
	public function toJSON(?toJSONOptions:IToJSONOptions):IMapField;
	static var prototype : MapField;
	/**
		Constructs a map field from a map field descriptor.
	**/
	public static function fromJSON(name:String, json:IMapField):MapField;
	/**
		Map field decorator (TypeScript).
	**/
	public static function d<T>(fieldId:Float, fieldKeyType:String, fieldValueType:ts.AnyOf3<Dynamic, String, Constructor<{ }>>):FieldDecorator;
}