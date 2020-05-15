package ts.lib;
@:native("RangeError") extern class RangeError {
	function new(?message:String);
	var name : String;
	var message : String;
	@:optional
	var stack : String;
	@:selfCall
	static function call(?message:String):RangeError;
	static final prototype : RangeError;
}