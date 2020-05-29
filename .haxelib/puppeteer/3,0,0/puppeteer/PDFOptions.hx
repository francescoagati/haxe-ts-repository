package puppeteer;

typedef PDFOptions = {
	/**
		The file path to save the PDF to.
		If `path` is a relative path, then it is resolved relative to current working directory.
		If no path is provided, the PDF won't be saved to the disk.
	**/
	@:optional
	var path : String;
	/**
		Scale of the webpage rendering.
	**/
	@:optional
	var scale : Float;
	/**
		Display header and footer.
	**/
	@:optional
	var displayHeaderFooter : Bool;
	/**
		HTML template for the print header. Should be valid HTML markup with following classes used to inject printing values into them:
		- `date` formatted print date
		- `title` document title
		- `url` document location
		- `pageNumber` current page number
		- `totalPages` total pages in the document
	**/
	@:optional
	var headerTemplate : String;
	/**
		HTML template for the print footer. Should be valid HTML markup with following classes used to inject printing values into them:
		- `date` formatted print date
		- `title` document title
		- `url` document location
		- `pageNumber` current page number
		- `totalPages` total pages in the document
	**/
	@:optional
	var footerTemplate : String;
	/**
		Print background graphics.
	**/
	@:optional
	var printBackground : Bool;
	/**
		Paper orientation.
	**/
	@:optional
	var landscape : Bool;
	/**
		Paper ranges to print, e.g., '1-5, 8, 11-13'.
	**/
	@:optional
	var pageRanges : String;
	/**
		Paper format. If set, takes priority over width or height options.
	**/
	@:optional
	var format : PDFFormat;
	/**
		Paper width.
	**/
	@:optional
	var width : ts.AnyOf2<String, Float>;
	/**
		Paper height.
	**/
	@:optional
	var height : ts.AnyOf2<String, Float>;
	/**
		Paper margins, defaults to none.
	**/
	@:optional
	var margin : {
		/**
			Top margin.
		**/
		@:optional
		var top : ts.AnyOf2<String, Float>;
		/**
			Right margin.
		**/
		@:optional
		var right : ts.AnyOf2<String, Float>;
		/**
			Bottom margin.
		**/
		@:optional
		var bottom : ts.AnyOf2<String, Float>;
		/**
			Left margin.
		**/
		@:optional
		var left : ts.AnyOf2<String, Float>;
	};
	/**
		Give any CSS @page size declared in the page priority over what is declared in width and
		height or format options.
	**/
	@:optional
	var preferCSSPageSize : Bool;
};