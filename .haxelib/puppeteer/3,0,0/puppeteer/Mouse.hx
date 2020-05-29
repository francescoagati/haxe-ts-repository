package puppeteer;

typedef Mouse = {
	/**
		Shortcut for `mouse.move`, `mouse.down` and `mouse.up`.
	**/
	function click(x:Float, y:Float, ?options:ClickOptions):js.lib.Promise<Void>;
	/**
		Dispatches a `mousedown` event.
	**/
	function down(?options:MousePressOptions):js.lib.Promise<Void>;
	/**
		Dispatches a `mousemove` event.
	**/
	function move(x:Float, y:Float, ?options:{ var steps : Float; }):js.lib.Promise<Void>;
	/**
		Dispatches a `mouseup` event.
	**/
	function up(?options:MousePressOptions):js.lib.Promise<Void>;
};