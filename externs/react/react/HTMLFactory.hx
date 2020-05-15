package react;
typedef HTMLFactory<T> = {
	@:overload(function(?props:ClassAttributes<T> & AllHTMLAttributes<T>, children:haxe.extern.Rest<ReactNode>):DOMElement<AllHTMLAttributes<T>, T> { })
	@:selfCall
	function call(?props:ClassAttributes<T> & AllHTMLAttributes<T>, children:haxe.extern.Rest<ReactNode>):DetailedReactHTMLElement<AllHTMLAttributes<T>, T>;
};