package react_navigation;
/**
	StackActions
**/
@:jsRequire("react-navigation", "StackActions") @valueModuleOnly extern class StackActions {
	static function pop(options:NavigationPopActionPayload):NavigationPopAction;
	static function popToTop(?options:NavigationPopToTopActionPayload):NavigationPopToTopAction;
	static function push(options:NavigationPushActionPayload):NavigationPushAction;
	static function reset(options:NavigationResetActionPayload):NavigationResetAction;
	static function replace(options:NavigationReplaceActionPayload):NavigationReplaceAction;
	static function completeTransition(?payload:NavigationCompleteTransitionActionPayload):NavigationCompleteTransitionAction;
	static var POP : String;
	static var POP_TO_TOP : String;
	static var PUSH : String;
	static var RESET : String;
	static var REPLACE : String;
	static var COMPLETE_TRANSITION : String;
}