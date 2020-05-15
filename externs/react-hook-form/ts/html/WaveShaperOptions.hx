package ts.html;
typedef WaveShaperOptions = {
	@:optional
	var curve : ts.AnyOf2<Array<Float>, ts.lib.Float32Array>;
	@:optional
	var oversample : String;
	@:optional
	var channelCount : Float;
	@:optional
	var channelCountMode : String;
	@:optional
	var channelInterpretation : String;
};