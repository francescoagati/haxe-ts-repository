package react_navigation;
typedef NavigationReplaceAction = {
	var type : String;
	var key : String;
	var routeName : String;
	@:optional
	var params : NavigationParams;
	@:optional
	var action : ts.AnyOf17<NavigationInitAction, NavigationNavigateAction, NavigationBackAction, NavigationSetParamsAction, NavigationResetAction, NavigationReplaceAction, NavigationPopAction, NavigationPushAction, NavigationPopToTopAction, NavigationCompleteTransitionAction, NavigationDrawerOpenedAction, NavigationDrawerClosedAction, NavigationOpenDrawerAction, NavigationCloseDrawerAction, NavigationToggleDrawerAction, NavigationJumpToAction, {
		var type : String;
		@:optional
		var key : String;
	}>;
};