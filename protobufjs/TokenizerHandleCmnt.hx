package protobufjs;

/**
	Gets the comment on the previous line or, alternatively, the line comment on the specified line.
**/
typedef TokenizerHandleCmnt = ts.AnyOf2<() -> Null<String>, (line:Float) -> Null<String>>;