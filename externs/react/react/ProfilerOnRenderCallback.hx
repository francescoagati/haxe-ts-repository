package react;
/**
	{@link https://github.com/bvaughn/rfcs/blob/profiler/text/0000-profiler.md#detailed-design | API}
**/
typedef ProfilerOnRenderCallback = (id:String, phase:String, actualDuration:Float, baseDuration:Float, startTime:Float, commitTime:Float, interactions:ts.lib.Set<SchedulerInteraction>) -> Void;