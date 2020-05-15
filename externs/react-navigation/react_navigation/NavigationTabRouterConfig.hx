package react_navigation;
typedef NavigationTabRouterConfig = {
	@:optional
	var initialRouteName : String;
	@:optional
	var initialRouteParams : NavigationParams;
	@:optional
	var paths : NavigationPathsConfig;
	@:optional
	var order : Array<String>;
	@:optional
	var backBehavior : String;
	@:optional
	var resetOnBlur : Bool;
};