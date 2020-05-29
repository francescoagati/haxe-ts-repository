package puppeteer;

typedef PageEventObj = {
	/**
		Emitted when the page closes.
	**/
	var close : Null<Any>;
	/**
		Emitted when JavaScript within the page calls one of console API methods, e.g. console.log or console.dir.
		Also emitted if the page throws an error or a warning.
	**/
	var console : ConsoleMessage;
	/**
		Emitted when a JavaScript dialog appears, such as alert, prompt, confirm or beforeunload.
		Puppeteer can respond to the dialog via Dialog's accept or dismiss methods.
	**/
	var dialog : Dialog;
	/**
		Emitted when the initial HTML document has been completely loaded and parsed,
		without waiting for stylesheets, images, and subframes to finish loading.
	**/
	var domcontentloaded : Any;
	/**
		Emitted when the page crashes.
	**/
	var error : js.lib.Error;
	/**
		Emitted when a frame is attached.
	**/
	var frameattached : Frame;
	/**
		Emitted when a frame is detached.
	**/
	var framedetached : Frame;
	/**
		Emitted when a frame is navigated to a new url.
	**/
	var framenavigated : Frame;
	/**
		Emitted when the JavaScript load event is dispatched.
	**/
	var load : Null<Any>;
	/**
		Emitted when the JavaScript code makes a call to `console.timeStamp`.
		For the list of metrics see `page.metrics`.
	**/
	var metrics : {
		var title : String;
		var metrics : Metrics;
	};
	/**
		Emitted when an uncaught exception happens within the page.
	**/
	var pageerror : js.lib.Error;
	/**
		Emitted when the page opens a new tab or window.
	**/
	var popup : Page;
	/**
		Emitted when a page issues a request. The request object is read-only.
		In order to intercept and mutate requests, see page.setRequestInterceptionEnabled.
	**/
	var request : Request;
	/**
		Emitted when a request fails, for example by timing out.
	**/
	var requestfailed : Request;
	/**
		Emitted when a request finishes successfully.
	**/
	var requestfinished : Request;
	/**
		Emitted when a response is received.
	**/
	var response : Response;
	/**
		Emitted when a dedicated WebWorker is spawned by the page.
	**/
	var workercreated : Worker;
	/**
		Emitted when a dedicated WebWorker is terminated.
	**/
	var workerdestroyed : Worker;
};