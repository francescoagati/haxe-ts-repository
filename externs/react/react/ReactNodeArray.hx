package react;
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
	function pop():react.ReactNodeLike;
	/**
		Appends new elements to an array, and returns the new length of the array.
	**/
	function push(items:haxe.extern.Rest<react.ReactNodeLike>):Float;
	/**
		Combines two or more arrays.
		
		Combines two or more arrays.
	**/
	@:overload(function(items:haxe.extern.Rest<Null<ts.AnyOf7<String, Float, Bool, { }, react.ReactElementLike, react.ReactNodeArray, ts.lib.ConcatArray<react.ReactNodeLike>>>>):Array<react.ReactNodeLike> { })
	function concat(items:haxe.extern.Rest<ts.lib.ConcatArray<react.ReactNodeLike>>):Array<react.ReactNodeLike>;
	/**
		Adds all the elements of an array separated by the specified separator string.
	**/
	function join(?separator:String):String;
	/**
		Reverses the elements in an Array.
	**/
	function reverse():Array<react.ReactNodeLike>;
	/**
		Removes the first element from an array and returns it.
	**/
	function shift():react.ReactNodeLike;
	/**
		Returns a section of an array.
	**/
	function slice(?start:Float, ?end:Float):Array<react.ReactNodeLike>;
	/**
		Sorts an array.
	**/
	function sort(?compareFn:(a:react.ReactNodeLike, b:react.ReactNodeLike) -> Float):react.ReactNodeArray;
	/**
		Removes elements from an array and, if necessary, inserts new elements in their place, returning the deleted elements.
		
		Removes elements from an array and, if necessary, inserts new elements in their place, returning the deleted elements.
	**/
	@:overload(function(start:Float, deleteCount:Float, items:haxe.extern.Rest<react.ReactNodeLike>):Array<react.ReactNodeLike> { })
	function splice(start:Float, ?deleteCount:Float):Array<react.ReactNodeLike>;
	/**
		Inserts new elements at the start of an array.
	**/
	function unshift(items:haxe.extern.Rest<react.ReactNodeLike>):Float;
	/**
		Returns the index of the first occurrence of a value in an array.
	**/
	function indexOf(searchElement:react.ReactNodeLike, ?fromIndex:Float):Float;
	/**
		Returns the index of the last occurrence of a specified value in an array.
	**/
	function lastIndexOf(searchElement:react.ReactNodeLike, ?fromIndex:Float):Float;
	/**
		Determines whether all the members of an array satisfy the specified test.
	**/
	function every(callbackfn:(value:react.ReactNodeLike, index:Float, array:Array<react.ReactNodeLike>) -> Any, ?thisArg:Dynamic):Bool;
	/**
		Determines whether the specified callback function returns true for any element of an array.
	**/
	function some(callbackfn:(value:react.ReactNodeLike, index:Float, array:Array<react.ReactNodeLike>) -> Any, ?thisArg:Dynamic):Bool;
	/**
		Performs the specified action for each element in an array.
	**/
	function forEach(callbackfn:(value:react.ReactNodeLike, index:Float, array:Array<react.ReactNodeLike>) -> Void, ?thisArg:Dynamic):Void;
	/**
		Calls a defined callback function on each element of an array, and returns an array that contains the results.
	**/
	function map<U>(callbackfn:(value:react.ReactNodeLike, index:Float, array:Array<react.ReactNodeLike>) -> U, ?thisArg:Dynamic):Array<U>;
	/**
		Returns the elements of an array that meet the condition specified in a callback function.
		
		Returns the elements of an array that meet the condition specified in a callback function.
	**/
	@:overload(function(callbackfn:(value:react.ReactNodeLike, index:Float, array:Array<react.ReactNodeLike>) -> Any, ?thisArg:Dynamic):Array<react.ReactNodeLike> { })
	function filter<S>(callbackfn:(value:react.ReactNodeLike, index:Float, array:Array<react.ReactNodeLike>) -> Bool, ?thisArg:Dynamic):Array<S>;
	/**
		Calls the specified callback function for all the elements in an array. The return value of the callback function is the accumulated result, and is provided as an argument in the next call to the callback function.
		
		Calls the specified callback function for all the elements in an array. The return value of the callback function is the accumulated result, and is provided as an argument in the next call to the callback function.
	**/
	@:overload(function(callbackfn:(previousValue:react.ReactNodeLike, currentValue:react.ReactNodeLike, currentIndex:Float, array:Array<react.ReactNodeLike>) -> react.ReactNodeLike, initialValue:react.ReactNodeLike):react.ReactNodeLike { })
	@:overload(function<U>(callbackfn:(previousValue:U, currentValue:react.ReactNodeLike, currentIndex:Float, array:Array<react.ReactNodeLike>) -> U, initialValue:U):U { })
	function reduce(callbackfn:(previousValue:react.ReactNodeLike, currentValue:react.ReactNodeLike, currentIndex:Float, array:Array<react.ReactNodeLike>) -> react.ReactNodeLike):react.ReactNodeLike;
	/**
		Calls the specified callback function for all the elements in an array, in descending order. The return value of the callback function is the accumulated result, and is provided as an argument in the next call to the callback function.
		
		Calls the specified callback function for all the elements in an array, in descending order. The return value of the callback function is the accumulated result, and is provided as an argument in the next call to the callback function.
	**/
	@:overload(function(callbackfn:(previousValue:react.ReactNodeLike, currentValue:react.ReactNodeLike, currentIndex:Float, array:Array<react.ReactNodeLike>) -> react.ReactNodeLike, initialValue:react.ReactNodeLike):react.ReactNodeLike { })
	@:overload(function<U>(callbackfn:(previousValue:U, currentValue:react.ReactNodeLike, currentIndex:Float, array:Array<react.ReactNodeLike>) -> U, initialValue:U):U { })
	function reduceRight(callbackfn:(previousValue:react.ReactNodeLike, currentValue:react.ReactNodeLike, currentIndex:Float, array:Array<react.ReactNodeLike>) -> react.ReactNodeLike):react.ReactNodeLike;
	/**
		Returns the value of the first element in the array where predicate is true, and undefined
		otherwise.
	**/
	@:overload(function(predicate:(value:react.ReactNodeLike, index:Float, obj:Array<react.ReactNodeLike>) -> Any, ?thisArg:Dynamic):react.ReactNodeLike { })
	function find<S>(predicate:(value:react.ReactNodeLike, index:Float, obj:Array<react.ReactNodeLike>) -> Bool, ?thisArg:Dynamic):Null<S>;
	/**
		Returns the index of the first element in the array where predicate is true, and -1
		otherwise.
	**/
	function findIndex(predicate:(value:react.ReactNodeLike, index:Float, obj:Array<react.ReactNodeLike>) -> Any, ?thisArg:Dynamic):Float;
	/**
		Returns the this object after filling the section identified by start and end with value
	**/
	function fill(value:react.ReactNodeLike, ?start:Float, ?end:Float):react.ReactNodeArray;
	/**
		Returns the this object after copying a section of the array identified by start and end
		to the same array starting at position target
	**/
	function copyWithin(target:Float, start:Float, ?end:Float):react.ReactNodeArray;
	/**
		Returns an iterable of key, value pairs for every entry in the array
	**/
	function entries():ts.lib.IterableIterator<ts.Tuple2<Float, react.ReactNodeLike>>;
	/**
		Returns an iterable of keys in the array
	**/
	function keys():ts.lib.IterableIterator<Float>;
	/**
		Returns an iterable of values in the array
	**/
	function values():ts.lib.IterableIterator<react.ReactNodeLike>;
};