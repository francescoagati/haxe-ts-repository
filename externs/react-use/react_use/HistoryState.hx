package react_use;
typedef HistoryState<S> = {
	var history : Array<S>;
	var position : Float;
	var capacity : Float;
	var back : ts.AnyOf2<() -> Void, (amount:Float) -> Void>;
	var forward : ts.AnyOf2<() -> Void, (amount:Float) -> Void>;
	var go : (position:Float) -> Void;
};