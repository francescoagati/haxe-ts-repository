package react_use;
typedef DropAreaBond = {
	var onDragOver : (event:react.DragEvent<ts.html.Element>) -> Void;
	var onDragEnter : (event:react.DragEvent<ts.html.Element>) -> Void;
	var onDragLeave : (event:react.DragEvent<ts.html.Element>) -> Void;
	var onDrop : (event:react.DragEvent<ts.html.Element>) -> Void;
	var onPaste : (event:react.ClipboardEvent<ts.html.Element>) -> Void;
};