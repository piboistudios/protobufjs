package protobufjs;

/**
	Abstract runtime message.
**/
@:jsRequire("protobufjs", "Message") extern class Message<T> {
	/**
		Constructs a new message instance.
	**/
	function new(?properties:{ });
	/**
		Reference to the reflected type.
	**/
	@:native("$type")
	public final DollarType : Type_;
	/**
		Converts this message to JSON.
	**/
	public function toJSON():{ };
	static var prototype : Message<Dynamic>;
	/**
		Reference to the reflected type.
	**/
	@:native("$type")
	public static final DollarType_ : Type_;
	/**
		Creates a new message of this type using the specified properties.
	**/
	public static function create<T>(?properties:{ }):Message<T>;
	/**
		Encodes a message of this type.
	**/
	public static function encode<T>(message:ts.AnyOf2<{ }, T>, ?writer:Writer):Writer;
	/**
		Encodes a message of this type preceeded by its length as a varint.
	**/
	public static function encodeDelimited<T>(message:ts.AnyOf2<{ }, T>, ?writer:Writer):Writer;
	/**
		Decodes a message of this type.
	**/
	public static function decode<T>(reader:ts.AnyOf2<js.lib.Uint8Array, Reader>):T;
	/**
		Decodes a message of this type preceeded by its length as a varint.
	**/
	public static function decodeDelimited<T>(reader:ts.AnyOf2<js.lib.Uint8Array, Reader>):T;
	/**
		Verifies a message of this type.
	**/
	public static function verify(message:{ }):Null<String>;
	/**
		Creates a new message of this type from a plain object. Also converts values to their respective internal types.
	**/
	public static function fromObject<T>(object:{ }):T;
	/**
		Creates a plain object from a message of this type. Also converts values to other types if specified.
	**/
	public static function toObject<T>(message:T, ?options:IConversionOptions):{ };
}