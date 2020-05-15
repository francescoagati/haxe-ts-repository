package ts.html;
typedef PeriodicWaveOptions = {
	@:optional
	var imag : ts.AnyOf2<Array<Float>, ts.lib.Float32Array>;
	@:optional
	var real : ts.AnyOf2<Array<Float>, ts.lib.Float32Array>;
	@:optional
	var disableNormalization : Bool;
};