package ts.html;
@:native("InputDeviceInfo") extern class InputDeviceInfo {
	function new();
	function getCapabilities():MediaTrackCapabilities;
	final deviceId : String;
	final groupId : String;
	final kind : MediaDeviceKind;
	final label : String;
	function toJSON():Dynamic;
	static var prototype : InputDeviceInfo;
}