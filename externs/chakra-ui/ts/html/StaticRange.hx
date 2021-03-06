package ts.html;
@:native("StaticRange") extern class StaticRange {
	function new();
	/**
		Returns true if range is collapsed, and false otherwise.
	**/
	final collapsed : Bool;
	/**
		Returns range's end node.
	**/
	final endContainer : Node;
	/**
		Returns range's end offset.
	**/
	final endOffset : Float;
	/**
		Returns range's start node.
	**/
	final startContainer : Node;
	/**
		Returns range's start offset.
	**/
	final startOffset : Float;
	static var prototype : StaticRange;
}