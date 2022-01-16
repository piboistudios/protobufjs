package protobufjs;

/**
	Options modifying the behavior of {@link parse}.
**/
typedef IParseOptions = {
	/**
		Keeps field casing instead of converting to camel case
	**/
	@:optional
	var keepCase : Bool;
	/**
		Recognize double-slash comments in addition to doc-block comments.
	**/
	@:optional
	var alternateCommentMode : Bool;
	/**
		Use trailing comment when both leading comment and trailing comment exist.
	**/
	@:optional
	var preferTrailingComment : Bool;
};