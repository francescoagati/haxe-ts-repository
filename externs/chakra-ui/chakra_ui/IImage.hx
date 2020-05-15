package chakra_ui;
typedef IImage = {
	/**
		The path to the image source
	**/
	var src : String;
	/**
		In event there was an error loading the `src`, specify a fallback
		In most cases, this can be an avatar or image placeholder
	**/
	@:optional
	var fallbackSrc : String;
	/**
		The alt text that describes the image
	**/
	var alt : String;
	/**
		A callback for when the image `src` has been loaded
	**/
	@:optional
	var onLoad : () -> Void;
	/**
		A callback for when there was an error loading the image `src`
	**/
	@:optional
	var onError : () -> Void;
};