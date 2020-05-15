package react;
typedef DetailedHTMLFactory<P, T> = {
	@:overload(function(?props:Dynamic, children:haxe.extern.Rest<ReactNode>):DOMElement<P, T> { })
	@:selfCall
	function call(?props:Dynamic, children:haxe.extern.Rest<ReactNode>):DetailedReactHTMLElement<P, T>;
};