package formik;
typedef ArrayHelpers = {
	/**
		Imperatively add a value to the end of an array
	**/
	var push : (obj:Dynamic) -> Void;
	/**
		Curried fn to add a value to the end of an array
	**/
	var handlePush : (obj:Dynamic) -> (() -> Void);
	/**
		Imperatively swap two values in an array
	**/
	var swap : (indexA:Float, indexB:Float) -> Void;
	/**
		Curried fn to swap two values in an array
	**/
	var handleSwap : (indexA:Float, indexB:Float) -> (() -> Void);
	/**
		Imperatively move an element in an array to another index
	**/
	var move : (from:Float, to:Float) -> Void;
	/**
		Imperatively move an element in an array to another index
	**/
	var handleMove : (from:Float, to:Float) -> (() -> Void);
	/**
		Imperatively insert an element at a given index into the array
	**/
	var insert : (index:Float, value:Dynamic) -> Void;
	/**
		Curried fn to insert an element at a given index into the array
	**/
	var handleInsert : (index:Float, value:Dynamic) -> (() -> Void);
	/**
		Imperatively replace a value at an index of an array
	**/
	var replace : (index:Float, value:Dynamic) -> Void;
	/**
		Curried fn to replace an element at a given index into the array
	**/
	var handleReplace : (index:Float, value:Dynamic) -> (() -> Void);
	/**
		Imperatively add an element to the beginning of an array and return its length
	**/
	var unshift : (value:Dynamic) -> Float;
	/**
		Curried fn to add an element to the beginning of an array
	**/
	var handleUnshift : (value:Dynamic) -> (() -> Void);
	/**
		Curried fn to remove an element at an index of an array
	**/
	var handleRemove : (index:Float) -> (() -> Void);
	/**
		Curried fn to remove a value from the end of the array
	**/
	var handlePop : () -> (() -> Void);
	/**
		Imperatively remove and element at an index of an array
	**/
	function remove<T>(index:Float):Null<T>;
	/**
		Imperatively remove and return value from the end of the array
	**/
	function pop<T>():Null<T>;
};