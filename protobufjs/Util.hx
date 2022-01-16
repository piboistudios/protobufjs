package protobufjs;

/**
	Various utility functions.
**/
@:jsRequire("protobufjs", "util") @valueModuleOnly extern class Util {
	/**
		Tests if the specified value is an integer.
	**/
	static function isInteger(value:Dynamic):Bool;
	/**
		Tests if the specified value is a string.
	**/
	static function isString(value:Dynamic):Bool;
	/**
		Tests if the specified value is a non-null object.
	**/
	static function isObject(value:Dynamic):Bool;
	/**
		Checks if a property on a message is considered to be present.
		This is an alias of {@link util.isSet}.
	**/
	static function isset(obj:Dynamic, prop:String):Bool;
	/**
		Checks if a property on a message is considered to be present.
	**/
	static function isSet(obj:Dynamic, prop:String):Bool;
	/**
		Creates a new buffer of whatever type supported by the environment.
	**/
	static function newBuffer(?sizeOrArray:ts.AnyOf2<Float, Array<Float>>):ts.AnyOf2<Buffer, js.lib.Uint8Array>;
	/**
		Converts a number or long to an 8 characters long hash string.
	**/
	static function longToHash(value:ts.AnyOf2<Float, Long>):String;
	/**
		Converts an 8 characters long hash string to a long or number.
	**/
	static function longFromHash(hash:String, ?unsigned:Bool):ts.AnyOf2<Float, Long>;
	/**
		Merges the properties of the source object into the destination object.
	**/
	static function merge(dst:{ }, src:{ }, ?ifNotSet:Bool):{ };
	/**
		Converts the first character of a string to lower case.
	**/
	static function lcFirst(str:String):String;
	/**
		Creates a custom error constructor.
	**/
	static function newError(name:String):Constructor<js.lib.Error>;
	/**
		Builds a getter for a oneof's present field name.
	**/
	static function oneOfGetter(fieldNames:Array<String>):OneOfGetter;
	/**
		Builds a setter for a oneof's present field name.
	**/
	static function oneOfSetter(fieldNames:Array<String>):OneOfSetter;
	/**
		Converts an object's values to an array.
	**/
	static function toArray(object:{ }):Array<Dynamic>;
	/**
		Converts an array of keys immediately followed by their respective value to an object, omitting undefined values.
	**/
	static function toObject(array:Array<Dynamic>):{ };
	/**
		Tests whether the specified name is a reserved word in JS.
	**/
	static function isReserved(name:String):Bool;
	/**
		Returns a safe property accessor for the specified property name.
	**/
	static function safeProp(prop:String):String;
	/**
		Converts the first character of a string to upper case.
	**/
	static function ucFirst(str:String):String;
	/**
		Converts a string to camel case.
	**/
	static function camelCase(str:String):String;
	/**
		Compares reflected fields by id.
	**/
	static function compareFieldsById(a:Field, b:Field):Float;
	/**
		Decorator helper for types (TypeScript).
	**/
	static function decorateType<T>(ctor:Constructor<T>, ?typeName:String):Type_;
	/**
		Decorator helper for enums (TypeScript).
	**/
	static function decorateEnum(object:Dynamic):Enum_;
	/**
		Sets the value of a property by property path. If a value already exists, it is turned to an array
	**/
	static function setProperty(dst:{ }, path:String, value:Dynamic):{ };
	/**
		Returns a promise from a node-style callback function.
	**/
	static function asPromise(fn:AsPromiseCallback, ctx:Dynamic, params:haxe.extern.Rest<Dynamic>):js.lib.Promise<Dynamic>;
	/**
		Begins generating a function.
		
		Begins generating a function.
	**/
	@:overload(function(?functionName:String):Codegen { })
	static function codegen(functionParams:Array<String>, ?functionName:String):Codegen;
	/**
		Fetches the contents of a file.
		
		Fetches the contents of a file.
		
		Fetches the contents of a file.
	**/
	@:overload(function(path:String, callback:FetchCallback):Void { })
	@:overload(function(path:String, ?options:IFetchOptions):js.lib.Promise<ts.AnyOf2<String, js.lib.Uint8Array>> { })
	static function fetch(filename:String, options:IFetchOptions, callback:FetchCallback):Void;
	/**
		Requires a module only if available.
	**/
	static function inquire(moduleName:String):Dynamic;
	/**
		A general purpose buffer pool.
	**/
	static function pool(alloc:PoolAllocator, slice:PoolSlicer, ?size:Float):PoolAllocator;
	/**
		Whether running within node or not.
	**/
	static var isNode : Bool;
	/**
		Global object reference.
	**/
	static var global : Dynamic;
	/**
		An immuable empty array.
	**/
	static final emptyArray : Array<Dynamic>;
	/**
		An immutable empty object.
	**/
	static final emptyObject : Dynamic;
	/**
		Regular expression used to verify 2 bit (`bool`) map keys.
	**/
	static final key2Re : js.lib.RegExp;
	/**
		Regular expression used to verify 32 bit (`int32` etc.) map keys.
	**/
	static final key32Re : js.lib.RegExp;
	/**
		Regular expression used to verify 64 bit (`int64` etc.) map keys.
	**/
	static final key64Re : js.lib.RegExp;
	/**
		Default conversion options used for {@link Message#toJSON} implementations.
		
		These options are close to proto3's JSON mapping with the exception that internal types like Any are handled just like messages. More precisely:
		
		- Longs become strings
		- Enums become string keys
		- Bytes become base64 encoded strings
		- (Sub-)Messages become plain objects
		- Maps become plain objects with all string keys
		- Repeated fields become arrays
		- NaN and Infinity for float and double fields become strings
	**/
	static var toJSONOptions : IConversionOptions;
	/**
		Node's fs module if available.
	**/
	static var fs : { };
	/**
		Decorator root (TypeScript).
	**/
	static var decorateRoot : Root;
}