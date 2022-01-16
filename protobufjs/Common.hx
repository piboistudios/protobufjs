package protobufjs;

/**
	Provides common type definitions.
	Can also be used to provide additional google types or your own custom types.
**/
@:jsRequire("protobufjs", "common") @valueModuleOnly extern class Common {
	/**
		Provides common type definitions.
		Can also be used to provide additional google types or your own custom types.
	**/
	@:selfCall
	static function call(name:String, json:{ }):Void;
	/**
		Gets the root definition of the specified common proto file.
		
		Bundled definitions are:
		- google/protobuf/any.proto
		- google/protobuf/duration.proto
		- google/protobuf/empty.proto
		- google/protobuf/field_mask.proto
		- google/protobuf/struct.proto
		- google/protobuf/timestamp.proto
		- google/protobuf/wrappers.proto
	**/
	static function get(file:String):Null<INamespace>;
}