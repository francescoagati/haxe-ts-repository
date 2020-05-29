package puppeteer;

/**
	You can use `tracing.start` and `tracing.stop` to create a trace file which can be opened in Chrome DevTools or timeline viewer.
**/
typedef Tracing = {
	function start(options:TracingStartOptions):js.lib.Promise<Void>;
	function stop():js.lib.Promise<global.Buffer>;
};