package react_navigation;
typedef NavigationLeafRoute<Params> = {
	/**
		React's key used by some navigators. No need to specify these manually,
		they will be defined by the router.
	**/
	var key : String;
	/**
		Index that represents the depth of the stack
	**/
	var index : Float;
	/**
		For example 'Home'.
		This is used as a key in a route config when creating a navigator.
	**/
	var routeName : String;
	/**
		Path is an advanced feature used for deep linking and on the web.
	**/
	@:optional
	var path : String;
	/**
		Params passed to this route when navigating to it,
		e.g. `{ car_id: 123 }` in a route that displays a car.
	**/
	@:optional
	var params : Params;
	/**
		Array containing the navigator's routes
	**/
	var routes : Array<NavigationRoute<NavigationParams>>;
	/**
		Flag that indicates the transition state of the route
	**/
	var isTransitioning : Bool;
};