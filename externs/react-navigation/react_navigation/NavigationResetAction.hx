package react_navigation;
typedef NavigationResetAction = {
	var type : String;
	var index : Float;
	@:optional
	var key : String;
	var actions : Array<NavigationNavigateAction>;
};