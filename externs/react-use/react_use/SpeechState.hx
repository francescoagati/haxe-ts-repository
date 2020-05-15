package react_use;
typedef SpeechState = {
	var isPlaying : Bool;
	var lang : String;
	var voice : ts.html.SpeechSynthesisVoice;
	var rate : Float;
	var pitch : Float;
	var volume : Float;
};