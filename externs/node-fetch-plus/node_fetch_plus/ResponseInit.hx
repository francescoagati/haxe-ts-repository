package node_fetch_plus;
typedef ResponseInit = {
	@:optional
	var headers : ts.AnyOf2<node_fetch_plus.Headers, Array<String>>;
	var status : Float;
	@:optional
	var statusText : String;
};