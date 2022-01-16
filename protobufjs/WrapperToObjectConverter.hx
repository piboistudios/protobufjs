package protobufjs;

/**
	To object converter part of an {@link IWrapper}.
**/
typedef WrapperToObjectConverter = ts.AnyOf2<(message:Message<{ }>) -> { }, (message:Message<{ }>, options:IConversionOptions) -> { }>;