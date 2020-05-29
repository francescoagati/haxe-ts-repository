package puppeteer;

/**
	Options for `addScriptTag`
**/
typedef ScriptTagOptions = {
	/**
		Url of a script to be added.
	**/
	@:optional
	var url : String;
	/**
		Path to the JavaScript file to be injected into frame. If `path` is a relative path, then it is resolved relative to current working directory.
	**/
	@:optional
	var path : String;
	/**
		Raw JavaScript content to be injected into frame.
	**/
	@:optional
	var content : String;
	/**
		Script type. Use 'module' in order to load a Javascript ES6 module.
	**/
	@:optional
	var type : String;
};