package react_use;
typedef UseBatteryState = ts.AnyOf3<{
	var isSupported : Bool;
}, {
	var isSupported : Bool;
	var fetched : Bool;
}, react_use.BatteryState & {
	var isSupported : Bool;
	var fetched : Bool;
}>;