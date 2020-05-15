package react_navigation;
/**
	NavigationState is a tree of routes for a single navigator, where each child
	route may either be a NavigationScreenRoute or a NavigationRouterRoute.
	NavigationScreenRoute represents a leaf screen, while the
	NavigationRouterRoute represents the state of a child navigator.
	
	NOTE: NavigationState is a state tree local to a single navigator and
	its child navigators (via the routes field).
	If we're in navigator nested deep inside the app, the state will only be the
	state for that navigator.
	The state for the root navigator of our app represents the whole navigation
	state for the whole app.
**/
typedef NavigationState = {
	/**
		Index refers to the active child route in the routes array.
	**/
	var index : Float;
	var routes : Array<NavigationRoute<NavigationParams>>;
	var isTransitioning : Bool;
	var key : String;
	@:optional
	var params : NavigationParams;
};