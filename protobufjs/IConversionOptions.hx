package protobufjs;

/**
	Conversion options as used by {@link Type#toObject} and {@link Message.toObject}.
**/
typedef IConversionOptions = {
	/**
		Long conversion type.
		Valid values are `String` and `Number` (the global types).
		Defaults to copy the present value, which is a possibly unsafe number without and a {@link Long} with a long library.
	**/
	@:optional
	var longs : haxe.Constraints.Function;
	/**
		Enum value conversion type.
		Only valid value is `String` (the global type).
		Defaults to copy the present value, which is the numeric id.
	**/
	@:optional
	var enums : haxe.Constraints.Function;
	/**
		Bytes value conversion type.
		Valid values are `Array` and (a base64 encoded) `String` (the global types).
		Defaults to copy the present value, which usually is a Buffer under node and an Uint8Array in the browser.
	**/
	@:optional
	var bytes : haxe.Constraints.Function;
	/**
		Also sets default values on the resulting object
	**/
	@:optional
	var defaults : Bool;
	/**
		Sets empty arrays for missing repeated fields even if `defaults=false`
	**/
	@:optional
	var arrays : Bool;
	/**
		Sets empty objects for missing map fields even if `defaults=false`
	**/
	@:optional
	var objects : Bool;
	/**
		Includes virtual oneof properties set to the present field's name, if any
	**/
	@:optional
	var oneofs : Bool;
	/**
		Performs additional JSON compatibility conversions, i.e. NaN and Infinity to strings
	**/
	@:optional
	var json : Bool;
};