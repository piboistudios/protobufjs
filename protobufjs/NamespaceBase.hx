package protobufjs;

/**
	Base class of all reflection objects containing nested objects. This is not an actual class but here for the sake of having consistent type definitions.
**/
@:jsRequire("protobufjs", "NamespaceBase") extern class NamespaceBase extends ReflectionObject {
	function new();
	/**
		Nested objects by name.
	**/
	@:optional
	public var nested : { };
	/**
		Nested objects of this namespace as an array for iteration.
	**/
	public final nestedArray : Array<ReflectionObject>;
	/**
		Converts this namespace to a namespace descriptor.
	**/
	public function toJSON(?toJSONOptions:IToJSONOptions):INamespace;
	/**
		Adds nested objects to this namespace from nested object descriptors.
	**/
	public function addJSON(nestedJson:{ }):Namespace;
	/**
		Gets the nested object of the specified name.
	**/
	public function get(name:String):Null<ReflectionObject>;
	/**
		Gets the values of the nested {@link Enum|enum} of the specified name.
		This methods differs from {@link Namespace#get|get} in that it returns an enum's values directly and throws instead of returning `null`.
	**/
	public function getEnum(name:String):{ };
	/**
		Adds a nested object to this namespace.
	**/
	public function add(object:ReflectionObject):Namespace;
	/**
		Removes a nested object from this namespace.
	**/
	public function remove(object:ReflectionObject):Namespace;
	/**
		Defines additial namespaces within this one if not yet existing.
	**/
	public function define(path:ts.AnyOf2<String, Array<String>>, ?json:Dynamic):Namespace;
	/**
		Resolves this namespace's and all its nested objects' type references. Useful to validate a reflection tree, but comes at a cost.
	**/
	public function resolveAll():Namespace;
	/**
		Recursively looks up the reflection object matching the specified path in the scope of this namespace.
		
		Looks up the reflection object at the specified path, relative to this namespace.
	**/
	@:overload(function(path:ts.AnyOf2<String, Array<String>>, ?parentAlreadyChecked:Bool):Null<ReflectionObject> { })
	public function lookup(path:ts.AnyOf2<String, Array<String>>, filterTypes:Dynamic, ?parentAlreadyChecked:Bool):Null<ReflectionObject>;
	/**
		Looks up the {@link Type|type} at the specified path, relative to this namespace.
		Besides its signature, this methods differs from {@link Namespace#lookup|lookup} in that it throws instead of returning `null`.
	**/
	public function lookupType(path:ts.AnyOf2<String, Array<String>>):Type_;
	/**
		Looks up the values of the {@link Enum|enum} at the specified path, relative to this namespace.
		Besides its signature, this methods differs from {@link Namespace#lookup|lookup} in that it throws instead of returning `null`.
	**/
	public function lookupEnum(path:ts.AnyOf2<String, Array<String>>):Enum_;
	/**
		Looks up the {@link Type|type} or {@link Enum|enum} at the specified path, relative to this namespace.
		Besides its signature, this methods differs from {@link Namespace#lookup|lookup} in that it throws instead of returning `null`.
	**/
	public function lookupTypeOrEnum(path:ts.AnyOf2<String, Array<String>>):Type_;
	/**
		Looks up the {@link Service|service} at the specified path, relative to this namespace.
		Besides its signature, this methods differs from {@link Namespace#lookup|lookup} in that it throws instead of returning `null`.
	**/
	public function lookupService(path:ts.AnyOf2<String, Array<String>>):Service;
	static var prototype : NamespaceBase;
}