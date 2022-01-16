package protobufjs;

/**
	Skips the next token.
**/
typedef TokenizerHandleSkip = ts.AnyOf2<(expected:String) -> Bool, (expected:String, optional:Bool) -> Bool>;