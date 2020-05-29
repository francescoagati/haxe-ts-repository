package puppeteer;

typedef Touchscreen = {
	/**
		Dispatches a touchstart and touchend event.
	**/
	function tap(x:Float, y:Float):js.lib.Promise<Void>;
};