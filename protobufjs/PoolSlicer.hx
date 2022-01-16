package protobufjs;

/**
	A slicer as used by {@link util.pool}.
**/
typedef PoolSlicer = (start:Float, end:Float) -> js.lib.Uint8Array;