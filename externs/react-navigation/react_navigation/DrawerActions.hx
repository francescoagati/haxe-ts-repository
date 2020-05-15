package react_navigation;
/**
	DrawerActions
**/
@:jsRequire("react-navigation", "DrawerActions") @valueModuleOnly extern class DrawerActions {
	static function openDrawer():NavigationOpenDrawerAction;
	static function closeDrawer():NavigationCloseDrawerAction;
	static function toggleDrawer():NavigationToggleDrawerAction;
	static var OPEN_DRAWER : String;
	static var CLOSE_DRAWER : String;
	static var TOGGLE_DRAWER : String;
}