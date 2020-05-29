package puppeteer;

typedef TracingStartOptions = {
	var path : String;
	@:optional
	var screenshots : Bool;
	@:optional
	var categories : Array<String>;
};