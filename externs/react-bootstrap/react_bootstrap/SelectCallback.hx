package react_bootstrap;
typedef SelectCallback = {
	@:overload(function(e:react_bootstrap.react.MouseEvent<{ }, ts.html.MouseEvent>):Void { })
	@:overload(function(event:Dynamic):Void { })
	@:selfCall
	function call(eventKey:Dynamic, e:react_bootstrap.react.SyntheticEvent<{ }, ts.html.Event>):Void;
};