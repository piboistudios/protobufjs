package protobufjs;

/**
	Decorator function as returned by {@link Type.d} (TypeScript).
**/
typedef TypeDecorator<T> = (target:Constructor<T>) -> Void;