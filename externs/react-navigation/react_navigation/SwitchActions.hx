package react_navigation;
/**
	SwitchActions
**/
@:jsRequire("react-navigation", "SwitchActions") @valueModuleOnly extern class SwitchActions {
	static function jumpTo(options:NavigationJumpToActionPayload):NavigationJumpToAction;
	static var JUMP_TO : String;
}