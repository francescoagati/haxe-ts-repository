package puppeteer;

typedef BinaryScreenShotOptions = {
	/**
		The encoding of the image, can be either base64 or binary.
	**/
	@:optional
	var encoding : String;
	/**
		The file path to save the image to. The screenshot type will be inferred from file extension.
		If `path` is a relative path, then it is resolved relative to current working directory.
		If no path is provided, the image won't be saved to the disk.
	**/
	@:optional
	var path : String;
	/**
		The screenshot type.
	**/
	@:optional
	var type : String;
	/**
		The quality of the image, between 0-100. Not applicable to png images.
	**/
	@:optional
	var quality : Float;
	/**
		When true, takes a screenshot of the full scrollable page.
	**/
	@:optional
	var fullPage : Bool;
	/**
		An object which specifies clipping region of the page.
	**/
	@:optional
	var clip : BoundingBox;
	/**
		Hides default white background and allows capturing screenshots with transparency.
	**/
	@:optional
	var omitBackground : Bool;
};