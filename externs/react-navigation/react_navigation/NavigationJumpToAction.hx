package react_navigation;
typedef NavigationJumpToAction = {
	var type : String;
	var routeName : String;
	var key : String;
	@:optional
	var preserveFocus : Bool;
};