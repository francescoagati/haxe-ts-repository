package react_use;
typedef NetworkState = {
	@:optional
	var online : Bool;
	@:optional
	var since : ts.lib.Date_;
	@:optional
	var downlink : Float;
	@:optional
	var downlinkMax : Float;
	@:optional
	var effectiveType : String;
	@:optional
	var rtt : Float;
	@:optional
	var type : String;
};