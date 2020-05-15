package rxjs;
@:jsRequire("rxjs", "VirtualTimeScheduler") extern class VirtualTimeScheduler extends AsyncScheduler {
	function new(?SchedulerAction:{ var EMPTY : Subscription; }, ?maxFrames:Float);
	var maxFrames : Float;
	var frame : Float;
	var index : Float;
	/**
		Prompt the Scheduler to execute all of its queued actions, therefore
		clearing its queue.
	**/
	function flush():Void;
	@:noCompletion
	static var frameTimeFactor : Float;
}