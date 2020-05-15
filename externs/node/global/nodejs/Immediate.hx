package global.nodejs;
typedef Immediate = {
	function hasRef():Bool;
	var _onImmediate : ts.lib.Function;
	function ref():Immediate;
	function unref():Immediate;
};