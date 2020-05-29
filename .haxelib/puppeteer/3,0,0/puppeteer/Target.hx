package puppeteer;

typedef Target = {
	/**
		Get the browser the target belongs to.
	**/
	function browser():Browser;
	/**
		The browser context the target belongs to.
	**/
	function browserContext():BrowserContext;
	/**
		Creates a Chrome Devtools Protocol session attached to the target.
	**/
	function createCDPSession():js.lib.Promise<CDPSession>;
	/**
		Get the target that opened this target. Top-level targets return `null`.
	**/
	function opener():Null<Target>;
	/**
		Returns the target `Page` or a `null` if the type of the page is not "page".
	**/
	function page():js.lib.Promise<Page>;
	/**
		Identifies what kind of target this is.
	**/
	function type():TargetType;
	/**
		Returns the target URL.
	**/
	function url():String;
	/**
		If the target is not of type `service_worker` or `shared_worker`, resolves `null`.
	**/
	function worker():js.lib.Promise<Null<Worker>>;
};