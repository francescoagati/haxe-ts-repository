package react_navigation;
typedef NavigationContainerProps<State, Options, ScreenProps> = {
	@:optional
	var uriPrefix : ts.AnyOf2<String, ts.lib.RegExp>;
	/**
		Controls whether the navigation container handles URLs opened via 'Linking'
	**/
	@:optional
	var enableURLHandling : Bool;
	@:optional
	var onNavigationStateChange : (prevNavigationState:NavigationState, nextNavigationState:NavigationState, action:NavigationAction) -> Null<Void>;
	@:optional
	var navigation : NavigationScreenProp<State, NavigationParams>;
	@:optional
	var persistenceKey : String;
	@:optional
	var loadNavigationState : () -> ts.lib.Promise<Dynamic>;
	@:optional
	var persistNavigationState : (state:NavigationState) -> ts.lib.Promise<Dynamic>;
	@:optional
	var renderLoadingExperimental : Dynamic;
	@:optional
	var screenProps : ScreenProps;
	@:optional
	var navigationOptions : Options;
	@:optional
	var style : Dynamic;
};