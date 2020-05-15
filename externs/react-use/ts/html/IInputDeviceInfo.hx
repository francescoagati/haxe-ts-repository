package ts.html;
typedef IInputDeviceInfo = {
	function getCapabilities():MediaTrackCapabilities;
	final deviceId : String;
	final groupId : String;
	final kind : MediaDeviceKind;
	final label : String;
	function toJSON():Dynamic;
};