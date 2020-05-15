package ts.html;
/**
	The SVGNumberList defines a list of SVGNumber objects.
**/
@:native("SVGNumberList") extern class SVGNumberList {
	function new();
	final length : Float;
	final numberOfItems : Float;
	function appendItem(newItem:SVGNumber):SVGNumber;
	function clear():Void;
	function getItem(index:Float):SVGNumber;
	function initialize(newItem:SVGNumber):SVGNumber;
	function insertItemBefore(newItem:SVGNumber, index:Float):SVGNumber;
	function removeItem(index:Float):SVGNumber;
	function replaceItem(newItem:SVGNumber, index:Float):SVGNumber;
	static var prototype : SVGNumberList;
}