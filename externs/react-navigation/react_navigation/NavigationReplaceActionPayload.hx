package react_navigation;
typedef NavigationReplaceActionPayload = {
	@:optional
	var key : String;
	@:optional
	var newKey : String;
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