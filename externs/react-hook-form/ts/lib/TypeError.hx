package ts.lib;
@:native("TypeError") extern class TypeError {
	function new(?message:String);
	var name : String;
	var message : String;
	@:optional
	var stack : String;
	@:selfCall
	static function call(?message:String):TypeError;
	static final prototype : TypeError;
}