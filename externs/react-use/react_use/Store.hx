package react_use;
typedef Store<Action, State> = {
	var getState : () -> State;
	var dispatch : react_use.Dispatch<Action>;
};