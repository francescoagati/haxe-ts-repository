package node.worker_threads;

typedef ResourceLimits = {
	@:optional
	var maxYoungGenerationSizeMb : Float;
	@:optional
	var maxOldGenerationSizeMb : Float;
	@:optional
	var codeRangeSizeMb : Float;
};