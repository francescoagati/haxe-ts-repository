@:jsRequire("react-navigation") @valueModuleOnly extern class React_navigation {
	static function getActiveChildNavigationOptions<S>(navigation:react_navigation.NavigationProp<S>, ?screenProps:Any, ?theme:String):react_navigation.NavigationParams;
	static function SwitchRouter(routeConfigs:react_navigation.NavigationRouteConfigMap<Dynamic, Dynamic, Any>, ?config:react_navigation.NavigationSwitchRouterConfig):react_navigation.NavigationRouter<Dynamic, Dynamic>;
	static function createSwitchNavigator(routeConfigMap:react_navigation.NavigationRouteConfigMap<{ }, react_navigation.NavigationSwitchProp<react_navigation.NavigationRoute<react_navigation.NavigationParams>, react_navigation.NavigationParams>, Any>, ?switchConfig:react_navigation.CreateNavigatorConfig<{ }, react_navigation.NavigationSwitchRouterConfig, { }, react_navigation.NavigationSwitchProp<react_navigation.NavigationRoute<react_navigation.NavigationParams>, react_navigation.NavigationParams>>):Dynamic;
	/**
		Tab Router
	**/
	static function TabRouter(routeConfigs:react_navigation.NavigationRouteConfigMap<Dynamic, Dynamic, Any>, config:react_navigation.NavigationTabRouterConfig):react_navigation.NavigationRouter<Dynamic, Dynamic>;
	/**
		Stack Router
	**/
	static function StackRouter(routeConfigs:react_navigation.NavigationRouteConfigMap<Dynamic, Dynamic, Any>, ?config:react_navigation.NavigationTabRouterConfig):react_navigation.NavigationRouter<Dynamic, Dynamic>;
	static function createNavigator<S, Options>(view:Dynamic, router:react_navigation.NavigationRouter<S, Options>, ?navigatorConfig:{ }, ?navigatorType:String):Dynamic;
	/**
		Create an HOC that injects the navigation and manages the navigation state
		in case it's not passed from above.
		This allows to use e.g. the StackNavigator and TabNavigator as root-level
		components.
	**/
	static function createNavigationContainer<Options, NavigationPropType>(Component:Dynamic):react_navigation.NavigationContainer;
	/**
		Create an app container to wrap the root navigator
	**/
	static function createAppContainer<Options, NavigationPropType>(Component:Dynamic):react_navigation.NavigationContainer;
	static function withOrientation<P>(Component:Dynamic):Dynamic;
	@:overload(function<P>(Component:Dynamic):Dynamic { })
	@:overload(function<T, P>(Component:Dynamic):Dynamic { })
	static function withNavigation<P, T>(Component:Dynamic):Dynamic;
	@:overload(function<P>(Component:Dynamic):Dynamic { })
	@:overload(function<T, P>(Component:Dynamic):Dynamic { })
	static function withNavigationFocus<P, T>(Component:Dynamic):Dynamic;
	static function createKeyboardAwareNavigator<Props>(Comp:Dynamic, stackConfig:Dynamic):Dynamic;
	static function useTheme():react_navigation.SupportedThemes;
	static var FlatList : Dynamic;
	static var SectionList : Dynamic;
	static var ScrollView : Dynamic;
	static var NavigationEvents : Dynamic;
	static var NavigationProvider : Dynamic;
	static var SafeAreaView : Dynamic;
	static var NavigationContext : Dynamic;
	static var SceneView : Dynamic;
	static var ThemeContext : Dynamic;
	static var ThemeColors : Dynamic;
}