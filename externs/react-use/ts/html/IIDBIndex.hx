package ts.html;
/**
	IDBIndex interface of the IndexedDB API provides asynchronous access to an index in a database. An index is a kind of object store for looking up records in another object store, called the referenced object store. You use this interface to retrieve data.
**/
typedef IIDBIndex = {
	final keyPath : ts.AnyOf2<String, Array<String>>;
	final multiEntry : Bool;
	/**
		Returns the name of the index.
	**/
	var name : String;
	/**
		Returns the IDBObjectStore the index belongs to.
	**/
	final objectStore : IDBObjectStore;
	final unique : Bool;
	/**
		Retrieves the number of records matching the given key or key range in query.
		
		If successful, request's result will be the count.
	**/
	function count(?key:ts.AnyOf7<String, Float, ts.lib.ArrayBuffer, IDBKeyRange, ts.lib.Date_, ts.lib.ArrayBufferView, IDBArrayKey>):IDBRequest<Float>;
	/**
		Retrieves the value of the first record matching the given key or key range in query.
		
		If successful, request's result will be the value, or undefined if there was no matching record.
	**/
	function get(key:ts.AnyOf7<String, Float, ts.lib.ArrayBuffer, IDBKeyRange, ts.lib.Date_, ts.lib.ArrayBufferView, IDBArrayKey>):IDBRequest<Dynamic>;
	/**
		Retrieves the values of the records matching the given key or key range in query (up to count if given).
		
		If successful, request's result will be an Array of the values.
	**/
	function getAll(?query:ts.AnyOf7<String, Float, ts.lib.ArrayBuffer, IDBKeyRange, ts.lib.Date_, ts.lib.ArrayBufferView, IDBArrayKey>, ?count:Float):IDBRequest<Array<Dynamic>>;
	/**
		Retrieves the keys of records matching the given key or key range in query (up to count if given).
		
		If successful, request's result will be an Array of the keys.
	**/
	function getAllKeys(?query:ts.AnyOf7<String, Float, ts.lib.ArrayBuffer, IDBKeyRange, ts.lib.Date_, ts.lib.ArrayBufferView, IDBArrayKey>, ?count:Float):IDBRequest<Array<IDBValidKey>>;
	/**
		Retrieves the key of the first record matching the given key or key range in query.
		
		If successful, request's result will be the key, or undefined if there was no matching record.
	**/
	function getKey(key:ts.AnyOf7<String, Float, ts.lib.ArrayBuffer, IDBKeyRange, ts.lib.Date_, ts.lib.ArrayBufferView, IDBArrayKey>):IDBRequest<Null<ts.AnyOf6<String, Float, ts.lib.ArrayBuffer, ts.lib.Date_, ts.lib.ArrayBufferView, IDBArrayKey>>>;
	/**
		Opens a cursor over the records matching query, ordered by direction. If query is null, all records in index are matched.
		
		If successful, request's result will be an IDBCursorWithValue, or null if there were no matching records.
	**/
	function openCursor(?query:ts.AnyOf7<String, Float, ts.lib.ArrayBuffer, IDBKeyRange, ts.lib.Date_, ts.lib.ArrayBufferView, IDBArrayKey>, ?direction:String):IDBRequest<Null<IDBCursorWithValue>>;
	/**
		Opens a cursor with key only flag set over the records matching query, ordered by direction. If query is null, all records in index are matched.
		
		If successful, request's result will be an IDBCursor, or null if there were no matching records.
	**/
	function openKeyCursor(?query:ts.AnyOf7<String, Float, ts.lib.ArrayBuffer, IDBKeyRange, ts.lib.Date_, ts.lib.ArrayBufferView, IDBArrayKey>, ?direction:String):IDBRequest<Null<IDBCursor>>;
};