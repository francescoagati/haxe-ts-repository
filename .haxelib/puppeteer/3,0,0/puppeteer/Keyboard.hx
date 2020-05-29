package puppeteer;

/**
	Keyboard provides an api for managing a virtual keyboard.
**/
typedef Keyboard = {
	/**
		Dispatches a keydown event.
	**/
	function down(key:String, ?options:{ @:optional var text : String; }):js.lib.Promise<Void>;
	/**
		Shortcut for `keyboard.down` and `keyboard.up`.
	**/
	function press(key:String, ?options:{ @:optional var text : String; @:optional var delay : Float; }):js.lib.Promise<Void>;
	/**
		Dispatches a `keypress` and `input` event. This does not send a `keydown` or keyup `event`.
	**/
	function sendCharacter(char:String):js.lib.Promise<Void>;
	/**
		Sends a keydown, keypress/input, and keyup event for each character in the text.
	**/
	function type(text:String, ?options:{ @:optional var delay : Float; }):js.lib.Promise<Void>;
	/**
		Dispatches a keyup event.
	**/
	function up(key:String):js.lib.Promise<Void>;
};