package ts.html;
/**
	Provides contains information about a MIME type associated with a particular plugin. NavigatorPlugins.mimeTypes returns an array of this object.
**/
typedef IMimeType = {
	/**
		Returns the MIME type's description.
	**/
	final description : String;
	/**
		Returns the Plugin object that implements this MIME type.
	**/
	final enabledPlugin : Plugin;
	/**
		Returns the MIME type's typical file extensions, in a comma-separated list.
	**/
	final suffixes : String;
	/**
		Returns the MIME type.
	**/
	final type : String;
};