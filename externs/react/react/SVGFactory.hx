package react;
typedef SVGFactory = {
	@:overload(function(?props:ClassAttributes<ts.html.SVGElement> & SVGAttributes<ts.html.SVGElement>, children:haxe.extern.Rest<ReactNode>):DOMElement<SVGAttributes<ts.html.SVGElement>, ts.html.SVGElement> { })
	@:selfCall
	function call(?props:ClassAttributes<ts.html.SVGElement> & SVGAttributes<ts.html.SVGElement>, children:haxe.extern.Rest<ReactNode>):ReactSVGElement;
};