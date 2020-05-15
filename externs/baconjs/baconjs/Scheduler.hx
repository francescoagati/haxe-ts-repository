package baconjs;
typedef Scheduler = {
	function setTimeout(f:ts.lib.Function, d:Float):Float;
	function setInterval(f:ts.lib.Function, i:Float):Float;
	function clearInterval(id:Float):Dynamic;
	function clearTimeout(id:Float):Dynamic;
	function now():Float;
};