package react_use;
typedef Observable<T> = {
	var subscribe : (listener:(value:T) -> Void) -> { var unsubscribe : () -> Void; };
};