package node.assert;
@:jsRequire("assert", "AssertionError") extern class AssertionError {
	function new(?options:{ @:optional var message : String; @:optional var actual : Dynamic; @:optional var expected : Dynamic; @:native("operator") @:optional var operator_ : String; @:optional var stackStartFn : ts.lib.Function; });
	var name : String;
	var message : String;
	var actual : Dynamic;
	var expected : Dynamic;
	@:native("operator")
	var operator_ : String;
	var generatedMessage : Bool;
	var code : String;
}