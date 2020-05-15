package react_navigation;
typedef NavigationPopAction = {
	var type : String;
	@:optional
	var key : String;
	@:optional
	var n : Float;
	@:optional
	var immediate : Bool;
	@:optional
	var prune : Bool;
};