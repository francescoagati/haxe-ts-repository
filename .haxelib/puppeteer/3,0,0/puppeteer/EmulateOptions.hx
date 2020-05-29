package puppeteer;

/**
	Page emulation options.
**/
typedef EmulateOptions = {
	/**
		The viewport emulation options.
	**/
	var viewport : Viewport;
	/**
		The emulated user-agent.
	**/
	var userAgent : String;
};