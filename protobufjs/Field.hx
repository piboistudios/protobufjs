package protobufjs;

/**
	Reflected message field.
**/
@:jsRequire("protobufjs", "Field") extern class Field extends FieldBase {
	/**
		Constructs a new message field instance. Note that {@link MapField|map fields} have their own class.
	**/
	function new(name:String, id:Float, type:String, ?rule:ts.AnyOf2<String, { }>, ?extend:ts.AnyOf2<String, { }>, ?options:{ });
	/**
		Determines whether this field is packed. Only relevant when repeated and working with proto2.
	**/
	public final packed : Bool;
	static var prototype : Field;
	/**
		Constructs a field from a field descriptor.
	**/
	public static function fromJSON(name:String, json:IField):Field;
	/**
		Field decorator (TypeScript).
		
		Field decorator (TypeScript).
	**/
	@:overload(function<T>(fieldId:Float, fieldType:ts.AnyOf2<String, Constructor<T>>, ?fieldRule:String):FieldDecorator { })
	public static function d<T>(fieldId:Float, fieldType:ts.AnyOf2<Dynamic, String>, ?fieldRule:String, ?defaultValue:T):FieldDecorator;
}