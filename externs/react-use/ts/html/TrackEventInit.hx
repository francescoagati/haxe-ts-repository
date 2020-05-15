package ts.html;
typedef TrackEventInit = {
	@:optional
	var track : ts.AnyOf3<TextTrack, AudioTrack, VideoTrack>;
	@:optional
	var bubbles : Bool;
	@:optional
	var cancelable : Bool;
	@:optional
	var composed : Bool;
};