package chakra_ui;
typedef IClipboard<T> = {
	var value : T;
	var onCopy : () -> Void;
	var hasCopied : Bool;
};