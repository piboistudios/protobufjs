package protobufjs;

/**
	Base class of all reflected message fields. This is not an actual class but here for the sake of having consistent type definitions.
**/
@:jsRequire("protobufjs", "FieldBase") extern class FieldBase extends ReflectionObject {
	/**
		Not an actual constructor. Use {@link Field} instead.
	**/
	function new(name:String, id:Float, type:String, ?rule:ts.AnyOf2<String, { }>, ?extend:ts.AnyOf2<String, { }>, ?options:{ }, ?comment:String);
	/**
		Field rule, if any.
	**/
	@:optional
	public var rule : String;
	/**
		Field type.
	**/
	public var type : String;
	/**
		Unique field id.
	**/
	public var id : Float;
	/**
		Extended type if different from parent.
	**/
	@:optional
	public var extend : String;
	/**
		Whether this field is required.
	**/
	public var required : Bool;
	/**
		Whether this field is optional.
	**/
	public var optional : Bool;
	/**
		Whether this field is repeated.
	**/
	public var repeated : Bool;
	/**
		Whether this field is a map or not.
	**/
	public var map : Bool;
	/**
		Message this field belongs to.
	**/
	public var message : Null<Type_>;
	/**
		OneOf this field belongs to, if any,
	**/
	public var partOf : Null<OneOf>;
	/**
		The field type's default value.
	**/
	public var typeDefault : Dynamic;
	/**
		The field's default value on prototypes.
	**/
	public var defaultValue : Dynamic;
	/**
		Whether this field's value should be treated as a long.
	**/
	public var long : Bool;
	/**
		Whether this field's value is a buffer.
	**/
	public var bytes : Bool;
	/**
		Resolved type if not a basic type.
	**/
	public var resolvedType : Null<ts.AnyOf2<Type_, Enum_>>;
	/**
		Sister-field within the extended type if a declaring extension field.
	**/
	public var extensionField : Null<Field>;
	/**
		Sister-field within the declaring namespace if an extended field.
	**/
	public var declaringField : Null<Field>;
	/**
		Converts this field to a field descriptor.
	**/
	public function toJSON(?toJSONOptions:IToJSONOptions):IField;
	/**
		Resolves this field's type references.
	**/
	public function resolve():Field;
	static var prototype : FieldBase;
}