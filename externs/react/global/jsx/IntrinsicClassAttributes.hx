package global.jsx;
typedef IntrinsicClassAttributes<T> = {
	@:optional
	var ref : ts.AnyOf3<String, (instance:Null<T>) -> Void, react.RefObject<T>>;
	@:optional
	var key : ts.AnyOf2<String, Float>;
};