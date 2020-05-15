package global.nodejs;
typedef RequireExtensions = {
	@:native(".js")
	var _js : (m:Module, filename:String) -> Dynamic;
	@:native(".json")
	var _json : (m:Module, filename:String) -> Dynamic;
	@:native(".node")
	var _node : (m:Module, filename:String) -> Dynamic;
};