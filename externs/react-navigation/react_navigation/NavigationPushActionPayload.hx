package react_navigation;
typedef NavigationPushActionPayload = {
	var routeName : String;
	@:optional
	var params : NavigationParams;
	@:optional
	var action : NavigationNavigateAction;
	@:optional
	var key : String;
};