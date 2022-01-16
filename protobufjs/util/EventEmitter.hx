package protobufjs.util;

/**
	A minimal event emitter.
**/
@:jsRequire("protobufjs", "util.EventEmitter") extern class EventEmitter {
	/**
		Constructs a new event emitter instance.
	**/
	function new();
	/**
		Registers an event listener.
	**/
	public function on(evt:String, fn:protobufjs.EventEmitterListener, ?ctx:Dynamic):EventEmitter;
	/**
		Removes an event listener or any matching listeners if arguments are omitted.
	**/
	public function off(?evt:String, ?fn:protobufjs.EventEmitterListener):EventEmitter;
	/**
		Emits an event by calling its listeners with the specified arguments.
	**/
	public function emit(evt:String, args:haxe.extern.Rest<Dynamic>):EventEmitter;
	static var prototype : EventEmitter;
}