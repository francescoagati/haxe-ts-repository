package react_use;
typedef FullScreenOptions = {
	@:optional
	var video : react.RefObject<ts.html.HTMLVideoElement>;
	@:optional
	var onClose : ts.AnyOf2<() -> Void, (error:ts.lib.Error) -> Void>;
};