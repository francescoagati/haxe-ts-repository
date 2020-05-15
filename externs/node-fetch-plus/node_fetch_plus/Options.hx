package node_fetch_plus;
typedef Options = {
	@:optional
	var retry : ts.AnyOf2<Bool, {
		@:optional
		var retries : Float;
		@:optional
		var factor : Float;
		@:optional
		var minTimeout : Float;
		@:optional
		var maxTimeout : Float;
		@:optional
		var retryOnStatusCodes : Array<Float>;
	}>;
};