package react_navigation;
typedef NavigationNavigateActionPayload = {
	var routeName : String;
	@:optional
	var params : NavigationParams;
	@:optional
	var action : NavigationNavigateAction;
	@:optional
	var key : String;
};