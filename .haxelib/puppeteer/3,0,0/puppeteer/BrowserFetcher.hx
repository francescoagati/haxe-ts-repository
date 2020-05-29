package puppeteer;

/**
	BrowserFetcher can download and manage different versions of Chromium.
**/
typedef BrowserFetcher = {
	/**
		The method initiates a HEAD request to check if the revision is available.
	**/
	function canDownload(revision:String):js.lib.Promise<Bool>;
	/**
		The method initiates a GET request to download the revision from the host.
	**/
	function download(revision:String, ?progressCallback:(downloadBytes:Float, totalBytes:Float) -> Void):js.lib.Promise<RevisionInfo>;
	function localRevisions():js.lib.Promise<Array<String>>;
	function platform():Platform;
	function product():Product;
	function remove(revision:String):js.lib.Promise<Void>;
	function revisionInfo(revision:String):RevisionInfo;
};