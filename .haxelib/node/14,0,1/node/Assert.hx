package node;

@:jsRequire("assert") @valueModuleOnly extern class Assert {
	@:selfCall
	static function call(value:Dynamic, ?message:ts.AnyOf2<String, js.lib.Error>):Void;
	@:overload(function(actual:Dynamic, expected:Dynamic, ?message:ts.AnyOf2<String, js.lib.Error>, ?operator_:String, ?stackStartFn:haxe.Constraints.Function):Any { })
	static function fail(?message:ts.AnyOf2<String, js.lib.Error>):Any;
	static function ok(value:Dynamic, ?message:ts.AnyOf2<String, js.lib.Error>):Void;
	static function equal(actual:Dynamic, expected:Dynamic, ?message:ts.AnyOf2<String, js.lib.Error>):Void;
	static function notEqual(actual:Dynamic, expected:Dynamic, ?message:ts.AnyOf2<String, js.lib.Error>):Void;
	static function deepEqual(actual:Dynamic, expected:Dynamic, ?message:ts.AnyOf2<String, js.lib.Error>):Void;
	static function notDeepEqual(actual:Dynamic, expected:Dynamic, ?message:ts.AnyOf2<String, js.lib.Error>):Void;
	static function strictEqual<T>(actual:Dynamic, expected:T, ?message:ts.AnyOf2<String, js.lib.Error>):Void;
	static function notStrictEqual(actual:Dynamic, expected:Dynamic, ?message:ts.AnyOf2<String, js.lib.Error>):Void;
	static function deepStrictEqual<T>(actual:Dynamic, expected:T, ?message:ts.AnyOf2<String, js.lib.Error>):Void;
	static function notDeepStrictEqual(actual:Dynamic, expected:Dynamic, ?message:ts.AnyOf2<String, js.lib.Error>):Void;
	@:overload(function(block:() -> Dynamic, error:node.assert.AssertPredicate, ?message:ts.AnyOf2<String, js.lib.Error>):Void { })
	static function throws(block:() -> Dynamic, ?message:ts.AnyOf2<String, js.lib.Error>):Void;
	@:overload(function(block:() -> Dynamic, error:ts.AnyOf2<haxe.Constraints.Function, js.lib.RegExp>, ?message:ts.AnyOf2<String, js.lib.Error>):Void { })
	static function doesNotThrow(block:() -> Dynamic, ?message:ts.AnyOf2<String, js.lib.Error>):Void;
	static function ifError(value:Dynamic):Void;
	@:overload(function(block:ts.AnyOf2<js.lib.Promise<Dynamic>, () -> js.lib.Promise<Dynamic>>, error:node.assert.AssertPredicate, ?message:ts.AnyOf2<String, js.lib.Error>):js.lib.Promise<Void> { })
	static function rejects(block:ts.AnyOf2<js.lib.Promise<Dynamic>, () -> js.lib.Promise<Dynamic>>, ?message:ts.AnyOf2<String, js.lib.Error>):js.lib.Promise<Void>;
	@:overload(function(block:ts.AnyOf2<js.lib.Promise<Dynamic>, () -> js.lib.Promise<Dynamic>>, error:ts.AnyOf2<haxe.Constraints.Function, js.lib.RegExp>, ?message:ts.AnyOf2<String, js.lib.Error>):js.lib.Promise<Void> { })
	static function doesNotReject(block:ts.AnyOf2<js.lib.Promise<Dynamic>, () -> js.lib.Promise<Dynamic>>, ?message:ts.AnyOf2<String, js.lib.Error>):js.lib.Promise<Void>;
	static function match(value:String, regExp:js.lib.RegExp, ?message:ts.AnyOf2<String, js.lib.Error>):Void;
	static function doesNotMatch(value:String, regExp:js.lib.RegExp, ?message:ts.AnyOf2<String, js.lib.Error>):Void;
	static final strict : {
		@:selfCall
		function call(value:Dynamic, ?message:ts.AnyOf2<String, js.lib.Error>):Void;
		@:overload(function(actual:Dynamic, expected:Dynamic, ?message:ts.AnyOf2<String, js.lib.Error>, ?operator_:String, ?stackStartFn:haxe.Constraints.Function):Any { })
		function fail(?message:ts.AnyOf2<String, js.lib.Error>):Any;
		function ok(value:Dynamic, ?message:ts.AnyOf2<String, js.lib.Error>):Void;
		function equal(actual:Dynamic, expected:Dynamic, ?message:ts.AnyOf2<String, js.lib.Error>):Void;
		function notEqual(actual:Dynamic, expected:Dynamic, ?message:ts.AnyOf2<String, js.lib.Error>):Void;
		function deepEqual(actual:Dynamic, expected:Dynamic, ?message:ts.AnyOf2<String, js.lib.Error>):Void;
		function notDeepEqual(actual:Dynamic, expected:Dynamic, ?message:ts.AnyOf2<String, js.lib.Error>):Void;
		function strictEqual<T>(actual:Dynamic, expected:T, ?message:ts.AnyOf2<String, js.lib.Error>):Void;
		function notStrictEqual(actual:Dynamic, expected:Dynamic, ?message:ts.AnyOf2<String, js.lib.Error>):Void;
		function deepStrictEqual<T>(actual:Dynamic, expected:T, ?message:ts.AnyOf2<String, js.lib.Error>):Void;
		function notDeepStrictEqual(actual:Dynamic, expected:Dynamic, ?message:ts.AnyOf2<String, js.lib.Error>):Void;
		@:overload(function(block:() -> Dynamic, error:node.assert.AssertPredicate, ?message:ts.AnyOf2<String, js.lib.Error>):Void { })
		function throws(block:() -> Dynamic, ?message:ts.AnyOf2<String, js.lib.Error>):Void;
		@:overload(function(block:() -> Dynamic, error:ts.AnyOf2<haxe.Constraints.Function, js.lib.RegExp>, ?message:ts.AnyOf2<String, js.lib.Error>):Void { })
		function doesNotThrow(block:() -> Dynamic, ?message:ts.AnyOf2<String, js.lib.Error>):Void;
		function ifError(value:Dynamic):Void;
		@:overload(function(block:ts.AnyOf2<js.lib.Promise<Dynamic>, () -> js.lib.Promise<Dynamic>>, error:node.assert.AssertPredicate, ?message:ts.AnyOf2<String, js.lib.Error>):js.lib.Promise<Void> { })
		function rejects(block:ts.AnyOf2<js.lib.Promise<Dynamic>, () -> js.lib.Promise<Dynamic>>, ?message:ts.AnyOf2<String, js.lib.Error>):js.lib.Promise<Void>;
		@:overload(function(block:ts.AnyOf2<js.lib.Promise<Dynamic>, () -> js.lib.Promise<Dynamic>>, error:ts.AnyOf2<haxe.Constraints.Function, js.lib.RegExp>, ?message:ts.AnyOf2<String, js.lib.Error>):js.lib.Promise<Void> { })
		function doesNotReject(block:ts.AnyOf2<js.lib.Promise<Dynamic>, () -> js.lib.Promise<Dynamic>>, ?message:ts.AnyOf2<String, js.lib.Error>):js.lib.Promise<Void>;
		function match(value:String, regExp:js.lib.RegExp, ?message:ts.AnyOf2<String, js.lib.Error>):Void;
		function doesNotMatch(value:String, regExp:js.lib.RegExp, ?message:ts.AnyOf2<String, js.lib.Error>):Void;
		final strict : Dynamic;
	};
}