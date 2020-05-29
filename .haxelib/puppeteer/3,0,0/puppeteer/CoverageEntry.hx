package puppeteer;

typedef CoverageEntry = {
	var url : String;
	var text : String;
	var ranges : Array<{
		var start : Float;
		var end : Float;
	}>;
};