package protobufjs;

/**
	An allocator as used by {@link util.pool}.
**/
typedef PoolAllocator = (size:Float) -> js.lib.Uint8Array;