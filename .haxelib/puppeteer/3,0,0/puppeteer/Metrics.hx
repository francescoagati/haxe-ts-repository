package puppeteer;

typedef Metrics = {
	/**
		The timestamp when the metrics sample was taken.
	**/
	var Timestamp : Float;
	/**
		Number of documents in the page.
	**/
	var Documents : Float;
	/**
		Number of frames in the page.
	**/
	var Frames : Float;
	/**
		Number of events in the page.
	**/
	var JSEventListeners : Float;
	/**
		Number of DOM nodes in the page.
	**/
	var Nodes : Float;
	/**
		Total number of full or partial page layout.
	**/
	var LayoutCount : Float;
	/**
		Total number of page style recalculations.
	**/
	var RecalcStyleCount : Float;
	/**
		Combined durations of all page layouts.
	**/
	var LayoutDuration : Float;
	/**
		Combined duration of all page style recalculations.
	**/
	var RecalcStyleDuration : Float;
	/**
		Combined duration of JavaScript execution.
	**/
	var ScriptDuration : Float;
	/**
		Combined duration of all tasks performed by the browser.
	**/
	var TaskDuration : Float;
	/**
		Used JavaScript heap size.
	**/
	var JSHeapUsedSize : Float;
	/**
		Total JavaScript heap size.
	**/
	var JSHeapTotalSize : Float;
};