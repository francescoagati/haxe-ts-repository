package puppeteer;

typedef BrowserContextEventObj = {
	/**
		Emitted when the url of a target inside the browser context changes.
	**/
	var targetchanged : Target;
	/**
		Emitted when a target is created, for example when a new page is opened by `window.open` or `browserContext.newPage`.
	**/
	var targetcreated : Target;
	/**
		Emitted when a target is destroyed, for example when a page is closed.
	**/
	var targetdestroyed : Target;
};