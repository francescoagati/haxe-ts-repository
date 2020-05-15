package react_use;
typedef Middleware<Action, State> = (store:react_use.Store<Action, State>) -> ((next:react_use.Dispatch<Action>) -> ((action:Action) -> Void));