package react_navigation;
typedef NavigationPushAction = {
	var type : String;
	var routeName : String;
	@:optional
	var params : NavigationParams;
	@:optional
	var action : NavigationNavigateAction;
	@:optional
	var key : String;
};