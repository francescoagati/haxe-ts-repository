package puppeteer;

/**
	Accepts values labeled with units. If number, treat as pixels.
**/
typedef LayoutDimension = ts.AnyOf2<String, Float>;