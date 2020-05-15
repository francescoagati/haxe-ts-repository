package ts.html;
/**
	The XPathEvaluator interface allows to compile and evaluate XPath expressions.
**/
typedef IXPathEvaluator = {
	function createExpression(expression:String, ?resolver:ts.AnyOf2<(prefix:Null<String>) -> Null<String>, { function lookupNamespaceURI(prefix:Null<String>):Null<String>; }>):XPathExpression;
	function createNSResolver(nodeResolver:Node):XPathNSResolver;
	function evaluate(expression:String, contextNode:Node, ?resolver:ts.AnyOf2<(prefix:Null<String>) -> Null<String>, { function lookupNamespaceURI(prefix:Null<String>):Null<String>; }>, ?type:Float, ?result:XPathResult):XPathResult;
};