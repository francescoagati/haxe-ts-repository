package puppeteer;

typedef MousePressOptions = {
	/**
		left, right, or middle.
	**/
	@:optional
	var button : MouseButtons;
	/**
		The number of clicks.
	**/
	@:optional
	var clickCount : Float;
};