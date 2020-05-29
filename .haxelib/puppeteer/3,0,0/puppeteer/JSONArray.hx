package puppeteer;

typedef JSONArray = {
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
	function pop():Null<ts.AnyOf5<String, Float, Bool, JSONArray, JSONObject>>;
	/**
		Appends new elements to an array, and returns the new length of the array.
	**/
	function push(items:haxe.extern.Rest<Serializable>):Float;
	/**
		Combines two or more arrays.
		
		Combines two or more arrays.
	**/
	@:overload(function(items:haxe.extern.Rest<Null<ts.AnyOf6<String, Float, Bool, JSONArray, JSONObject, js.lib.ConcatArray<Serializable>>>>):Array<Serializable> { })
	function concat(items:haxe.extern.Rest<js.lib.ConcatArray<Serializable>>):Array<Serializable>;
	/**
		Adds all the elements of an array separated by the specified separator string.
	**/
	function join(?separator:String):String;
	/**
		Reverses the elements in an Array.
	**/
	function reverse():Array<Serializable>;
	/**
		Removes the first element from an array and returns it.
	**/
	function shift():Null<ts.AnyOf5<String, Float, Bool, JSONArray, JSONObject>>;
	/**
		Returns a section of an array.
	**/
	function slice(?start:Float, ?end:Float):Array<Serializable>;
	/**
		Sorts an array.
	**/
	function sort(?compareFn:(a:Serializable, b:Serializable) -> Float):JSONArray;
	/**
		Removes elements from an array and, if necessary, inserts new elements in their place, returning the deleted elements.
		
		Removes elements from an array and, if necessary, inserts new elements in their place, returning the deleted elements.
	**/
	@:overload(function(start:Float, deleteCount:Float, items:haxe.extern.Rest<Serializable>):Array<Serializable> { })
	function splice(start:Float, ?deleteCount:Float):Array<Serializable>;
	/**
		Inserts new elements at the start of an array.
	**/
	function unshift(items:haxe.extern.Rest<Serializable>):Float;
	/**
		Returns the index of the first occurrence of a value in an array.
	**/
	function indexOf(searchElement:Serializable, ?fromIndex:Float):Float;
	/**
		Returns the index of the last occurrence of a specified value in an array.
	**/
	function lastIndexOf(searchElement:Serializable, ?fromIndex:Float):Float;
	/**
		Determines whether all the members of an array satisfy the specified test.
	**/
	function every(callbackfn:(value:Serializable, index:Float, array:Array<Serializable>) -> Any, ?thisArg:Dynamic):Bool;
	/**
		Determines whether the specified callback function returns true for any element of an array.
	**/
	function some(callbackfn:(value:Serializable, index:Float, array:Array<Serializable>) -> Any, ?thisArg:Dynamic):Bool;
	/**
		Performs the specified action for each element in an array.
	**/
	function forEach(callbackfn:(value:Serializable, index:Float, array:Array<Serializable>) -> Void, ?thisArg:Dynamic):Void;
	/**
		Calls a defined callback function on each element of an array, and returns an array that contains the results.
	**/
	function map<U>(callbackfn:(value:Serializable, index:Float, array:Array<Serializable>) -> U, ?thisArg:Dynamic):Array<U>;
	/**
		Returns the elements of an array that meet the condition specified in a callback function.
		
		Returns the elements of an array that meet the condition specified in a callback function.
	**/
	@:overload(function(callbackfn:(value:Serializable, index:Float, array:Array<Serializable>) -> Any, ?thisArg:Dynamic):Array<Serializable> { })
	function filter<S>(callbackfn:(value:Serializable, index:Float, array:Array<Serializable>) -> Bool, ?thisArg:Dynamic):Array<S>;
	/**
		Calls the specified callback function for all the elements in an array. The return value of the callback function is the accumulated result, and is provided as an argument in the next call to the callback function.
		
		Calls the specified callback function for all the elements in an array. The return value of the callback function is the accumulated result, and is provided as an argument in the next call to the callback function.
	**/
	@:overload(function(callbackfn:(previousValue:Serializable, currentValue:Serializable, currentIndex:Float, array:Array<Serializable>) -> Serializable, initialValue:Serializable):Serializable { })
	@:overload(function<U>(callbackfn:(previousValue:U, currentValue:Serializable, currentIndex:Float, array:Array<Serializable>) -> U, initialValue:U):U { })
	function reduce(callbackfn:(previousValue:Serializable, currentValue:Serializable, currentIndex:Float, array:Array<Serializable>) -> Serializable):Serializable;
	/**
		Calls the specified callback function for all the elements in an array, in descending order. The return value of the callback function is the accumulated result, and is provided as an argument in the next call to the callback function.
		
		Calls the specified callback function for all the elements in an array, in descending order. The return value of the callback function is the accumulated result, and is provided as an argument in the next call to the callback function.
	**/
	@:overload(function(callbackfn:(previousValue:Serializable, currentValue:Serializable, currentIndex:Float, array:Array<Serializable>) -> Serializable, initialValue:Serializable):Serializable { })
	@:overload(function<U>(callbackfn:(previousValue:U, currentValue:Serializable, currentIndex:Float, array:Array<Serializable>) -> U, initialValue:U):U { })
	function reduceRight(callbackfn:(previousValue:Serializable, currentValue:Serializable, currentIndex:Float, array:Array<Serializable>) -> Serializable):Serializable;
	/**
		Returns the value of the first element in the array where predicate is true, and undefined
		otherwise.
	**/
	@:overload(function(predicate:(value:Serializable, index:Float, obj:Array<Serializable>) -> Any, ?thisArg:Dynamic):Null<ts.AnyOf5<String, Float, Bool, JSONArray, JSONObject>> { })
	function find<S>(predicate:(value:Serializable, index:Float, obj:Array<Serializable>) -> Bool, ?thisArg:Dynamic):Null<S>;
	/**
		Returns the index of the first element in the array where predicate is true, and -1
		otherwise.
	**/
	function findIndex(predicate:(value:Serializable, index:Float, obj:Array<Serializable>) -> Any, ?thisArg:Dynamic):Float;
	/**
		Returns the this object after filling the section identified by start and end with value
	**/
	function fill(value:Serializable, ?start:Float, ?end:Float):JSONArray;
	/**
		Returns the this object after copying a section of the array identified by start and end
		to the same array starting at position target
	**/
	function copyWithin(target:Float, start:Float, ?end:Float):JSONArray;
	/**
		Returns an iterable of key, value pairs for every entry in the array
	**/
	function entries():js.lib.IterableIterator<ts.Tuple2<Float, Serializable>>;
	/**
		Returns an iterable of keys in the array
	**/
	function keys():js.lib.IterableIterator<Float>;
	/**
		Returns an iterable of values in the array
	**/
	function values():js.lib.IterableIterator<Serializable>;
	/**
		Determines whether an array includes a certain element, returning true or false as appropriate.
	**/
	function includes(searchElement:Serializable, ?fromIndex:Float):Bool;
};