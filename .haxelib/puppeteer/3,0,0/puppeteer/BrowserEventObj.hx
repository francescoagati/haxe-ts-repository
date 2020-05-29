package puppeteer;

typedef BrowserEventObj = {
	/**
		Emitted when puppeteer gets disconnected from the browser instance.
	**/
	var disconnected : Null<Any>;
	/**
		Emitted when the url of a target changes.
	**/
	var targetchanged : Target;
	/**
		Emitted when a target is created, for example when a new page is opened by `window.open` or `browser.newPage`.
	**/
	var targetcreated : Target;
	/**
		Emitted when a target is destroyed, for example when a page is closed.
	**/
	var targetdestroyed : Target;
};