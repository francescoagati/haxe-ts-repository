package puppeteer.errors;

/**
	TimeoutError is emitted whenever certain operations are terminated due to timeout,
	e.g. page.waitForSelector(selector[, options]) or puppeteer.launch([options]).
**/
@:jsRequire("puppeteer/Errors", "TimeoutError") extern class TimeoutError extends js.lib.Error {
	function new();
	static var prototype : TimeoutError;
}