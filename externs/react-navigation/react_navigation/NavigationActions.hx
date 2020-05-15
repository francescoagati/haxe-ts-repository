package react_navigation;
/**
	NavigationActions
**/
@:jsRequire("react-navigation", "NavigationActions") @valueModuleOnly extern class NavigationActions {
	static function init(?options:NavigationInitActionPayload):NavigationInitAction;
	static function navigate(options:NavigationNavigateActionPayload):NavigationNavigateAction;
	static function back(?options:NavigationBackActionPayload):NavigationBackAction;
	static function setParams(options:NavigationSetParamsActionPayload):NavigationSetParamsAction;
	static var BACK : String;
	static var INIT : String;
	static var NAVIGATE : String;
	static var SET_PARAMS : String;
}