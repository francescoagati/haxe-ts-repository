package puppeteer;

typedef TargetAwaiter = {
	function waitForTarget(predicate:(target:Target) -> Bool, ?options:Timeoutable):js.lib.Promise<Target>;
};