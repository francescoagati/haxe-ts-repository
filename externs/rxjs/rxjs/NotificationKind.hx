package rxjs;
@:jsRequire("rxjs", "NotificationKind") @:enum extern abstract NotificationKind(String) from String to String {
	var NEXT;
	var ERROR;
	var COMPLETE;
}