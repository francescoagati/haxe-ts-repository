package ts.lib;
/**
	Provides functionality common to all JavaScript objects.
**/
typedef IObject = {
	/**
		The initial value of Object.prototype.constructor is the standard built-in Object constructor.
	**/
	var constructor : Function;
	/**
		Returns a string representation of an object.
	**/
	function toString():String;
	/**
		Returns a date converted to a string using the current locale.
	**/
	function toLocaleString():String;
	/**
		Returns the primitive value of the specified object.
	**/
	function valueOf():Object;
	/**
		Determines whether an object has a property with the specified name.
	**/
	function hasOwnProperty(v:ts.AnyOf3<String, Float, js.lib.Symbol>):Bool;
	/**
		Determines whether an object exists in another object's prototype chain.
	**/
	function isPrototypeOf(v:Object):Bool;
	/**
		Determines whether a specified property is enumerable.
	**/
	function propertyIsEnumerable(v:ts.AnyOf3<String, Float, js.lib.Symbol>):Bool;
};