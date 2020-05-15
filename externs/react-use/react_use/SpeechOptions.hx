package react_use;
typedef SpeechOptions = {
	@:optional
	var lang : String;
	@:optional
	var voice : ts.html.SpeechSynthesisVoice;
	@:optional
	var rate : Float;
	@:optional
	var pitch : Float;
	@:optional
	var volume : Float;
};