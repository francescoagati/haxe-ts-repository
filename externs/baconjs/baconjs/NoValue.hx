package baconjs;
/**
	Base class for events not carrying a value.
**/
@jsInaccessible extern class NoValue extends baconjs.Event_<Dynamic> {
	function fmap<V2>(f:ts.lib.Function):baconjs.NoValue;
}