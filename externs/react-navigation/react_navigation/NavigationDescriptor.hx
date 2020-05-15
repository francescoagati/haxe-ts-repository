package react_navigation;
/**
	Create Navigator
**/
typedef NavigationDescriptor<Params, Options, NavigationScreenPropType> = {
	var key : String;
	var state : ts.AnyOf2<NavigationLeafRoute<Params>, NavigationStateRoute<Params>>;
	var navigation : NavigationScreenPropType;
	var options : Options;
	var getComponent : () -> Dynamic;
};