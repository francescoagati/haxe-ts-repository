package puppeteer;

typedef BoxModel = {
	/**
		Content box, represented as an array of {x, y} points.
	**/
	var content : Array<Box>;
	/**
		Padding box, represented as an array of {x, y} points.
	**/
	var padding : Array<Box>;
	/**
		Border box, represented as an array of {x, y} points.
	**/
	var border : Array<Box>;
	/**
		Margin box, represented as an array of {x, y} points.
	**/
	var margin : Array<Box>;
	var width : Float;
	var height : Float;
};