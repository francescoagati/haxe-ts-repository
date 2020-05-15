package react_navigation;
typedef NavigationEventPayload = {
	var type : EventType;
	var action : NavigationAction;
	var state : NavigationState;
	var lastState : Null<NavigationState>;
};