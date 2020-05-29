package puppeteer;

typedef SnapshopOptions = {
	/**
		Prune uninteresting nodes from the tree.
	**/
	@:optional
	var interestingOnly : Bool;
	/**
		The root DOM element for the snapshot.
	**/
	@:optional
	var root : ElementHandle<js.html.DOMElement>;
};