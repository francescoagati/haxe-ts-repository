package puppeteer;

typedef Coverage = {
	function startCSSCoverage(?options:StartCoverageOptions):js.lib.Promise<Void>;
	function startJSCoverage(?options:StartCoverageOptions):js.lib.Promise<Void>;
	function stopCSSCoverage():js.lib.Promise<Array<CoverageEntry>>;
	function stopJSCoverage():js.lib.Promise<Array<CoverageEntry>>;
};