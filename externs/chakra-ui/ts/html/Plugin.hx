package ts.html;
/**
	Provides information about a browser plugin.
**/
@:native("Plugin") extern class Plugin {
	function new();
	/**
		Returns the plugin's description.
	**/
	final description : String;
	/**
		Returns the plugin library's filename, if applicable on the current platform.
	**/
	final filename : String;
	/**
		Returns the number of MIME types, represented by MimeType objects, supported by the plugin.
	**/
	final length : Float;
	/**
		Returns the plugin's name.
	**/
	final name : String;
	/**
		Returns the specified MimeType object.
	**/
	function item(index:Float):Null<MimeType>;
	function namedItem(name:String):Null<MimeType>;
	static var prototype : Plugin;
}