package react_use;
typedef Actions<K> = {
	var has : (key:K) -> Bool;
	var add : (key:K) -> Void;
	var remove : (key:K) -> Void;
	var toggle : (key:K) -> Void;
	var reset : () -> Void;
};