package puppeteer;

typedef StartCoverageOptions = {
	/**
		Whether to reset coverage on every navigation.
	**/
	@:optional
	var resetOnNavigation : Bool;
	/**
		Whether anonymous scripts generated by the page should be reported.
	**/
	@:optional
	var reportAnonymousScripts : Bool;
};