package react_navigation;
typedef NavigationRouter<State, Options> = {
	/**
		The reducer that outputs the new navigation state for a given action, with
		an optional previous state. When the action is considered handled but the
		state is unchanged, the output state is null.
	**/
	var getStateForAction : ts.AnyOf2<(action:NavigationAction) -> Null<State>, (action:NavigationAction, lastState:State) -> Null<State>>;
	/**
		Maps a URI-like string to an action. This can be mapped to a state
		using `getStateForAction`.
	**/
	var getActionForPathAndParams : ts.AnyOf2<(path:String) -> Null<ts.AnyOf17<NavigationInitAction, NavigationNavigateAction, NavigationBackAction, NavigationSetParamsAction, NavigationResetAction, NavigationReplaceAction, NavigationPopAction, NavigationPushAction, NavigationPopToTopAction, NavigationCompleteTransitionAction, NavigationDrawerOpenedAction, NavigationDrawerClosedAction, NavigationOpenDrawerAction, NavigationCloseDrawerAction, NavigationToggleDrawerAction, NavigationJumpToAction, { var type : String; @:optional var key : String; }>>, (path:String, params:NavigationParams) -> Null<ts.AnyOf17<NavigationInitAction, NavigationNavigateAction, NavigationBackAction, NavigationSetParamsAction, NavigationResetAction, NavigationReplaceAction, NavigationPopAction, NavigationPushAction, NavigationPopToTopAction, NavigationCompleteTransitionAction, NavigationDrawerOpenedAction, NavigationDrawerClosedAction, NavigationOpenDrawerAction, NavigationCloseDrawerAction, NavigationToggleDrawerAction, NavigationJumpToAction, { var type : String; @:optional var key : String; }>>>;
	var getPathAndParamsForState : (state:State) -> { var path : String; @:optional var params : NavigationParams; };
	var getComponentForRouteName : (routeName:String) -> Dynamic;
	var getComponentForState : (state:State) -> Dynamic;
	var getActionCreators : (route:NavigationRoute<NavigationParams>, key:String) -> { };
	/**
		Gets the screen navigation options for a given screen.
		
		For example, we could get the config for the 'Foo' screen when the
		`navigation.state` is:
		
		  {routeName: 'Foo', key: '123'}
	**/
	var getScreenOptions : NavigationScreenOptionsGetter<Options>;
};