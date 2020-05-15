package react_use;
typedef HTMLMediaControls = {
	var play : () -> ts.AnyOf2<Void, ts.lib.Promise<Void>>;
	var pause : () -> Void;
	var mute : () -> Void;
	var unmute : () -> Void;
	var volume : (volume:Float) -> Void;
	var seek : (time:Float) -> Void;
};