package ts.html;
typedef PushSubscriptionOptionsInit = {
	@:optional
	var applicationServerKey : ts.AnyOf3<String, ts.lib.ArrayBufferView, ts.lib.ArrayBuffer>;
	@:optional
	var userVisibleOnly : Bool;
};