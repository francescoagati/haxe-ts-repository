package puppeteer;

typedef WaitForSelectorOptions = {
	/**
		Wait for element to be present in DOM and to be visible,
		i.e. to not have display: none or visibility: hidden CSS properties.
	**/
	@:optional
	var visible : Bool;
	/**
		Wait for element to not be found in the DOM or to be hidden,
		i.e. have display: none or visibility: hidden CSS properties.
	**/
	@:optional
	var hidden : Bool;
	/**
		Maximum navigation time in milliseconds, pass 0 to disable timeout.
	**/
	@:optional
	var timeout : Float;
};