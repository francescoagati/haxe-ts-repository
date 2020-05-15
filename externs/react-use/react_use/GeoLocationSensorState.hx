package react_use;
typedef GeoLocationSensorState = {
	var loading : Bool;
	var accuracy : Null<Float>;
	var altitude : Null<Float>;
	var altitudeAccuracy : Null<Float>;
	var heading : Null<Float>;
	var latitude : Null<Float>;
	var longitude : Null<Float>;
	var speed : Null<Float>;
	var timestamp : Null<Float>;
	@:optional
	var error : ts.AnyOf2<ts.lib.Error, ts.html.PositionError>;
};