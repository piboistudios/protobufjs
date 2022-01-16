package protobufjs;

/**
	Runtime message from/to plain object converters.
**/
@:jsRequire("protobufjs", "converter") @valueModuleOnly extern class Converter {
	/**
		Generates a plain object to runtime message converter specific to the specified message type.
	**/
	static function fromObject(mtype:Type_):Codegen;
	/**
		Generates a runtime message to plain object converter specific to the specified message type.
	**/
	static function toObject(mtype:Type_):Codegen;
}