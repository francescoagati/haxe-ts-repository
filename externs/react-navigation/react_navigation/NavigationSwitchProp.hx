package react_navigation;
typedef NavigationSwitchProp<State, Params> = NavigationScreenProp<State, Params> & {
	function jumpTo(routeName:String, ?key:String):Void;
};