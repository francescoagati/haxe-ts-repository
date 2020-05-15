package react_navigation;
typedef DrawerNavigationState = {
	var isDrawerOpen : Bool;
	var isTransitioning : Bool;
	/**
		Index refers to the active child route in the routes array.
	**/
	var index : Float;
	var routes : Array<NavigationRoute<NavigationParams>>;
	var key : String;
	@:optional
	var params : NavigationParams;
};