package protobufjs;

/**
	Common type constants.
**/
@:jsRequire("protobufjs", "types") @valueModuleOnly extern class Types {
	/**
		Basic type wire types.
	**/
	static final basic : {
		var double : Float;
		var float : Float;
		var int32 : Float;
		var uint32 : Float;
		var sint32 : Float;
		var fixed32 : Float;
		var sfixed32 : Float;
		var int64 : Float;
		var uint64 : Float;
		var sint64 : Float;
		var fixed64 : Float;
		var sfixed64 : Float;
		var bool : Float;
		var string : Float;
		var bytes : Float;
	};
	/**
		Basic type defaults.
	**/
	static final defaults : {
		var double : Float;
		var float : Float;
		var int32 : Float;
		var uint32 : Float;
		var sint32 : Float;
		var fixed32 : Float;
		var sfixed32 : Float;
		var int64 : Float;
		var uint64 : Float;
		var sint64 : Float;
		var fixed64 : Float;
		var sfixed64 : Float;
		var bool : Bool;
		var string : String;
		var bytes : Array<Float>;
		var message : Dynamic;
	};
	/**
		Basic long type wire types.
	**/
	static final long : {
		var int64 : Float;
		var uint64 : Float;
		var sint64 : Float;
		var fixed64 : Float;
		var sfixed64 : Float;
	};
	/**
		Allowed types for map keys with their associated wire type.
	**/
	static final mapKey : {
		var int32 : Float;
		var uint32 : Float;
		var sint32 : Float;
		var fixed32 : Float;
		var sfixed32 : Float;
		var int64 : Float;
		var uint64 : Float;
		var sint64 : Float;
		var fixed64 : Float;
		var sfixed64 : Float;
		var bool : Float;
		var string : Float;
	};
	/**
		Allowed types for packed repeated fields with their associated wire type.
	**/
	static final packed : {
		var double : Float;
		var float : Float;
		var int32 : Float;
		var uint32 : Float;
		var sint32 : Float;
		var fixed32 : Float;
		var sfixed32 : Float;
		var int64 : Float;
		var uint64 : Float;
		var sint64 : Float;
		var fixed64 : Float;
		var sfixed64 : Float;
		var bool : Float;
	};
}