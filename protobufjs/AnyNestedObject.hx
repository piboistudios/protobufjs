package protobufjs;

/**
	Any nested object descriptor.
**/
typedef AnyNestedObject = ts.AnyOf6<INamespace, IEnum, IExtensionField, IExtensionMapField, IType, IService>;