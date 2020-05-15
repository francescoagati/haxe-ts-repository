package react_use;
typedef MotionSensorState = {
	var acceleration : {
		var x : Null<Float>;
		var y : Null<Float>;
		var z : Null<Float>;
	};
	var accelerationIncludingGravity : {
		var x : Null<Float>;
		var y : Null<Float>;
		var z : Null<Float>;
	};
	var rotationRate : {
		var alpha : Null<Float>;
		var beta : Null<Float>;
		var gamma : Null<Float>;
	};
	var interval : Null<Float>;
};