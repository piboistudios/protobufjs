package protobufjs;

/**
	Result object returned from {@link parse}.
**/
typedef IParserResult = {
	/**
		Package name, if declared
	**/
	@:native("package")
	var package_ : Null<String>;
	/**
		Imports, if any
	**/
	var imports : Null<Array<String>>;
	/**
		Weak imports, if any
	**/
	var weakImports : Null<Array<String>>;
	/**
		Syntax, if specified (either `"proto2"` or `"proto3"`)
	**/
	var syntax : Null<String>;
	/**
		Populated root instance
	**/
	var root : Root;
};