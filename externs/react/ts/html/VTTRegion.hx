package ts.html;
@:native("VTTRegion") extern class VTTRegion {
	function new();
	var id : String;
	var lines : Float;
	var regionAnchorX : Float;
	var regionAnchorY : Float;
	var scroll : ScrollSetting;
	var viewportAnchorX : Float;
	var viewportAnchorY : Float;
	var width : Float;
	static var prototype : VTTRegion;
}