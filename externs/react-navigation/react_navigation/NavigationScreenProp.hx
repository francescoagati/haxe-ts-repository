package react_navigation;
typedef NavigationScreenProp<S, P> = {
	var state : Dynamic;
	var dispatch : NavigationDispatch;
	var goBack : ts.AnyOf2<() -> Bool, (routeKey:String) -> Bool>;
	var dismiss : () -> Bool;
	@:overload(function<T>(routeNameOrOptions:String, ?params:T, ?action:ts.AnyOf17<NavigationInitAction, NavigationNavigateAction, NavigationBackAction, NavigationSetParamsAction, NavigationResetAction, NavigationReplaceAction, NavigationPopAction, NavigationPushAction, NavigationPopToTopAction, NavigationCompleteTransitionAction, NavigationDrawerOpenedAction, NavigationDrawerClosedAction, NavigationOpenDrawerAction, NavigationCloseDrawerAction, NavigationToggleDrawerAction, NavigationJumpToAction, { var type : String; @:optional var key : String; }>):Bool { })
	function navigate<T>(options:{ var routeName : ts.AnyOf2<String, { var routeName : String; @:optional var params : T; @:optional var action : NavigationNavigateAction; @:optional var key : String; }>; @:optional var params : T; @:optional var action : ts.AnyOf17<NavigationInitAction, NavigationNavigateAction, NavigationBackAction, NavigationSetParamsAction, NavigationResetAction, NavigationReplaceAction, NavigationPopAction, NavigationPushAction, NavigationPopToTopAction, NavigationCompleteTransitionAction, NavigationDrawerOpenedAction, NavigationDrawerClosedAction, NavigationOpenDrawerAction, NavigationCloseDrawerAction, NavigationToggleDrawerAction, NavigationJumpToAction, { var type : String; @:optional var key : String; }>; @:optional var key : String; }):Bool;
	@:overload(function<T>(param:T):Dynamic { })
	function getParam<T>(param:T, fallback:ts.lib.NonNullable<Dynamic>):ts.lib.NonNullable<Dynamic>;
	var setParams : (newParams:{ }) -> Bool;
	var emit : (eventName:String) -> Void;
	var addListener : (eventName:String, callback:NavigationEventCallback) -> NavigationEventSubscription;
	var isFocused : () -> Bool;
	var isFirstRouteInParent : () -> Bool;
	@:optional
	var router : NavigationRouter<NavigationState, { }>;
	var dangerouslyGetParent : () -> Null<NavigationScreenProp<S, NavigationParams>>;
};