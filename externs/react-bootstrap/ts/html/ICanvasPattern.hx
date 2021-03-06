package ts.html;
/**
	An opaque object describing a pattern, based on an image, a canvas, or a video, created by the CanvasRenderingContext2D.createPattern() method.
**/
typedef ICanvasPattern = {
	/**
		Sets the transformation matrix that will be used when rendering the pattern during a fill or stroke painting operation.
	**/
	function setTransform(?transform:DOMMatrix2DInit):Void;
};