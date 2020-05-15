package react_navigation;
typedef NavigationNavigatorProps<Options, State, ScreenProps> = {
	@:optional
	var theme : String;
	@:optional
	var detached : Bool;
	@:optional
	var navigation : NavigationProp<State>;
	@:optional
	var screenProps : ScreenProps;
	@:optional
	var navigationOptions : Options;
};