package react_navigation;
typedef NavigationSwitchScreenProps<Params, ScreenProps> = {
	var theme : SupportedThemes;
	var navigation : NavigationSwitchProp<NavigationRoute<NavigationParams>, Params>;
	var screenProps : ScreenProps;
};