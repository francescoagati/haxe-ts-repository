package react_navigation;
typedef NavigationAction = ts.AnyOf17<NavigationInitAction, NavigationNavigateAction, NavigationBackAction, NavigationSetParamsAction, NavigationResetAction, NavigationReplaceAction, NavigationPopAction, NavigationPushAction, NavigationPopToTopAction, NavigationCompleteTransitionAction, NavigationDrawerOpenedAction, NavigationDrawerClosedAction, NavigationOpenDrawerAction, NavigationCloseDrawerAction, NavigationToggleDrawerAction, NavigationJumpToAction, {
	var type : String;
	@:optional
	var key : String;
}>;