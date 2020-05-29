package puppeteer;

/**
	Options for `addStyleTag`
**/
typedef StyleTagOptions = {
	/**
		Url of the <link> tag.
	**/
	@:optional
	var url : String;
	/**
		Path to the CSS file to be injected into frame. If `path` is a relative path, then it is resolved relative to current working directory.
	**/
	@:optional
	var path : String;
	/**
		Raw CSS content to be injected into frame.
	**/
	@:optional
	var content : String;
};