package puppeteer;

typedef ClickOptions = {
	@:optional
	var button : MouseButtons;
	@:optional
	var clickCount : Float;
	/**
		Time to wait between mousedown and mouseup in milliseconds.
	**/
	@:optional
	var delay : Float;
};