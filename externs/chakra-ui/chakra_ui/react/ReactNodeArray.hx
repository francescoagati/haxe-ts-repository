package chakra_ui.react;
typedef ReactNodeArray = {
	/**
		Gets or sets the length of the array. This is a number one higher than the highest element defined in an array.
	**/
	var length : Float;
	/**
		Returns a string representation of an array.
	**/
	function toString():String;
	/**
		Returns a string representation of an array. The elements are converted to string using their toLocalString methods.
	**/
	function toLocaleString():String;
	/**
		Removes the last element from an array and returns it.
	**/
	function pop():chakra_ui.react.ReactNode;
	/**
		Appends new elements to an array, and returns the new length of the array.
	**/
	function push(items:haxe.extern.Rest<chakra_ui.react.ReactNode>):Float;
	/**
		Combines two or more arrays.
		
		Combines two or more arrays.
	**/
	@:overload(function(items:haxe.extern.Rest<Null<ts.AnyOf8<String, Float, Bool, { }, chakra_ui.react.ReactElement<Dynamic, ts.AnyOf3<String, (props:Dynamic) -> Null<chakra_ui.react.ReactElement<Dynamic, Dynamic>>, { }>>, chakra_ui.react.ReactNodeArray, chakra_ui.react.ReactPortal, ts.lib.ConcatArray<chakra_ui.react.ReactNode>>>>):Array<chakra_ui.react.ReactNode> { })
	function concat(items:haxe.extern.Rest<ts.lib.ConcatArray<chakra_ui.react.ReactNode>>):Array<chakra_ui.react.ReactNode>;
	/**
		Adds all the elements of an array separated by the specified separator string.
	**/
	function join(?separator:String):String;
	/**
		Reverses the elements in an Array.
	**/
	function reverse():Array<chakra_ui.react.ReactNode>;
	/**
		Removes the first element from an array and returns it.
	**/
	function shift():chakra_ui.react.ReactNode;
	/**
		Returns a section of an array.
	**/
	function slice(?start:Float, ?end:Float):Array<chakra_ui.react.ReactNode>;
	/**
		Sorts an array.
	**/
	function sort(?compareFn:(a:chakra_ui.react.ReactNode, b:chakra_ui.react.ReactNode) -> Float):chakra_ui.react.ReactNodeArray;
	/**
		Removes elements from an array and, if necessary, inserts new elements in their place, returning the deleted elements.
		
		Removes elements from an array and, if necessary, inserts new elements in their place, returning the deleted elements.
	**/
	@:overload(function(start:Float, deleteCount:Float, items:haxe.extern.Rest<chakra_ui.react.ReactNode>):Array<chakra_ui.react.ReactNode> { })
	function splice(start:Float, ?deleteCount:Float):Array<chakra_ui.react.ReactNode>;
	/**
		Inserts new elements at the start of an array.
	**/
	function unshift(items:haxe.extern.Rest<chakra_ui.react.ReactNode>):Float;
	/**
		Returns the index of the first occurrence of a value in an array.
	**/
	function indexOf(searchElement:chakra_ui.react.ReactNode, ?fromIndex:Float):Float;
	/**
		Returns the index of the last occurrence of a specified value in an array.
	**/
	function lastIndexOf(searchElement:chakra_ui.react.ReactNode, ?fromIndex:Float):Float;
	/**
		Determines whether all the members of an array satisfy the specified test.
	**/
	function every(callbackfn:(value:chakra_ui.react.ReactNode, index:Float, array:Array<chakra_ui.react.ReactNode>) -> Any, ?thisArg:Dynamic):Bool;
	/**
		Determines whether the specified callback function returns true for any element of an array.
	**/
	function some(callbackfn:(value:chakra_ui.react.ReactNode, index:Float, array:Array<chakra_ui.react.ReactNode>) -> Any, ?thisArg:Dynamic):Bool;
	/**
		Performs the specified action for each element in an array.
	**/
	function forEach(callbackfn:(value:chakra_ui.react.ReactNode, index:Float, array:Array<chakra_ui.react.ReactNode>) -> Void, ?thisArg:Dynamic):Void;
	/**
		Calls a defined callback function on each element of an array, and returns an array that contains the results.
	**/
	function map<U>(callbackfn:(value:chakra_ui.react.ReactNode, index:Float, array:Array<chakra_ui.react.ReactNode>) -> U, ?thisArg:Dynamic):Array<U>;
	/**
		Returns the elements of an array that meet the condition specified in a callback function.
		
		Returns the elements of an array that meet the condition specified in a callback function.
	**/
	@:overload(function(callbackfn:(value:chakra_ui.react.ReactNode, index:Float, array:Array<chakra_ui.react.ReactNode>) -> Any, ?thisArg:Dynamic):Array<chakra_ui.react.ReactNode> { })
	function filter<S>(callbackfn:(value:chakra_ui.react.ReactNode, index:Float, array:Array<chakra_ui.react.ReactNode>) -> Bool, ?thisArg:Dynamic):Array<S>;
	/**
		Calls the specified callback function for all the elements in an array. The return value of the callback function is the accumulated result, and is provided as an argument in the next call to the callback function.
		
		Calls the specified callback function for all the elements in an array. The return value of the callback function is the accumulated result, and is provided as an argument in the next call to the callback function.
	**/
	@:overload(function(callbackfn:(previousValue:chakra_ui.react.ReactNode, currentValue:chakra_ui.react.ReactNode, currentIndex:Float, array:Array<chakra_ui.react.ReactNode>) -> chakra_ui.react.ReactNode, initialValue:chakra_ui.react.ReactNode):chakra_ui.react.ReactNode { })
	@:overload(function<U>(callbackfn:(previousValue:U, currentValue:chakra_ui.react.ReactNode, currentIndex:Float, array:Array<chakra_ui.react.ReactNode>) -> U, initialValue:U):U { })
	function reduce(callbackfn:(previousValue:chakra_ui.react.ReactNode, currentValue:chakra_ui.react.ReactNode, currentIndex:Float, array:Array<chakra_ui.react.ReactNode>) -> chakra_ui.react.ReactNode):chakra_ui.react.ReactNode;
	/**
		Calls the specified callback function for all the elements in an array, in descending order. The return value of the callback function is the accumulated result, and is provided as an argument in the next call to the callback function.
		
		Calls the specified callback function for all the elements in an array, in descending order. The return value of the callback function is the accumulated result, and is provided as an argument in the next call to the callback function.
	**/
	@:overload(function(callbackfn:(previousValue:chakra_ui.react.ReactNode, currentValue:chakra_ui.react.ReactNode, currentIndex:Float, array:Array<chakra_ui.react.ReactNode>) -> chakra_ui.react.ReactNode, initialValue:chakra_ui.react.ReactNode):chakra_ui.react.ReactNode { })
	@:overload(function<U>(callbackfn:(previousValue:U, currentValue:chakra_ui.react.ReactNode, currentIndex:Float, array:Array<chakra_ui.react.ReactNode>) -> U, initialValue:U):U { })
	function reduceRight(callbackfn:(previousValue:chakra_ui.react.ReactNode, currentValue:chakra_ui.react.ReactNode, currentIndex:Float, array:Array<chakra_ui.react.ReactNode>) -> chakra_ui.react.ReactNode):chakra_ui.react.ReactNode;
	/**
		Returns the value of the first element in the array where predicate is true, and undefined
		otherwise.
	**/
	@:overload(function(predicate:(value:chakra_ui.react.ReactNode, index:Float, obj:Array<chakra_ui.react.ReactNode>) -> Any, ?thisArg:Dynamic):chakra_ui.react.ReactNode { })
	function find<S>(predicate:(value:chakra_ui.react.ReactNode, index:Float, obj:Array<chakra_ui.react.ReactNode>) -> Bool, ?thisArg:Dynamic):Null<S>;
	/**
		Returns the index of the first element in the array where predicate is true, and -1
		otherwise.
	**/
	function findIndex(predicate:(value:chakra_ui.react.ReactNode, index:Float, obj:Array<chakra_ui.react.ReactNode>) -> Any, ?thisArg:Dynamic):Float;
	/**
		Returns the this object after filling the section identified by start and end with value
	**/
	function fill(value:chakra_ui.react.ReactNode, ?start:Float, ?end:Float):chakra_ui.react.ReactNodeArray;
	/**
		Returns the this object after copying a section of the array identified by start and end
		to the same array starting at position target
	**/
	function copyWithin(target:Float, start:Float, ?end:Float):chakra_ui.react.ReactNodeArray;
	/**
		Returns an iterable of key, value pairs for every entry in the array
	**/
	function entries():ts.lib.IterableIterator<ts.Tuple2<Float, chakra_ui.react.ReactNode>>;
	/**
		Returns an iterable of keys in the array
	**/
	function keys():ts.lib.IterableIterator<Float>;
	/**
		Returns an iterable of values in the array
	**/
	function values():ts.lib.IterableIterator<chakra_ui.react.ReactNode>;
};