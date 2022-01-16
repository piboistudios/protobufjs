@:jsRequire("protobufjs") @valueModuleOnly extern class Protobufjs {
	/**
		Provides common type definitions.
		Can also be used to provide additional google types or your own custom types.
	**/
	static function common(name:String, json:{ }):Void;
	/**
		Generates a decoder specific to the specified message type.
	**/
	static function decoder(mtype:protobufjs.Type_):protobufjs.Codegen;
	/**
		Generates an encoder specific to the specified message type.
	**/
	static function encoder(mtype:protobufjs.Type_):protobufjs.Codegen;
	/**
		Loads one or multiple .proto or preprocessed .json files into a common root namespace and calls the callback.
		
		Loads one or multiple .proto or preprocessed .json files into a common root namespace and calls the callback.
		
		Loads one or multiple .proto or preprocessed .json files into a common root namespace and returns a promise.
	**/
	@:overload(function(filename:ts.AnyOf2<String, Array<String>>, callback:protobufjs.LoadCallback):Void { })
	@:overload(function(filename:ts.AnyOf2<String, Array<String>>, ?root:protobufjs.Root):js.lib.Promise<protobufjs.Root> { })
	static function load(filename:ts.AnyOf2<String, Array<String>>, root:protobufjs.Root, callback:protobufjs.LoadCallback):Void;
	/**
		Synchronously loads one or multiple .proto or preprocessed .json files into a common root namespace (node only).
	**/
	static function loadSync(filename:ts.AnyOf2<String, Array<String>>, ?root:protobufjs.Root):protobufjs.Root;
	/**
		Reconfigures the library according to the environment.
	**/
	static function configure():Void;
	/**
		Parses the given .proto source and returns an object with the parsed contents.
		
		Parses the given .proto source and returns an object with the parsed contents.
	**/
	@:overload(function(source:String, root:protobufjs.Root, ?options:protobufjs.IParseOptions):protobufjs.IParserResult { })
	static function parse(source:String, ?options:protobufjs.IParseOptions):protobufjs.IParserResult;
	/**
		Tokenizes the given .proto source and returns an object with useful utility functions.
	**/
	static function tokenize(source:String, alternateCommentMode:Bool):protobufjs.ITokenizerHandle;
	/**
		Generates a verifier specific to the specified message type.
	**/
	static function verifier(mtype:protobufjs.Type_):protobufjs.Codegen;
	/**
		Build type, one of `"full"`, `"light"` or `"minimal"`.
	**/
	static final build : String;
	/**
		Named roots.
		This is where pbjs stores generated structures (the option `-r, --root` specifies a name).
		Can also be used manually to make roots available accross modules.
	**/
	static var roots : { };
	/**
		Wrappers for common types.
	**/
	static final wrappers : { };
}