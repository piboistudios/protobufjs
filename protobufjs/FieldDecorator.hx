package protobufjs;

/**
	Decorator function as returned by {@link Field.d} and {@link MapField.d} (TypeScript).
**/
typedef FieldDecorator = (prototype:Dynamic, fieldName:String) -> Void;