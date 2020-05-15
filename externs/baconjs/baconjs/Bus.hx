package baconjs;
/**
	An [`EventStream`](eventstream.html) that allows you to [`push`](#push) values into the stream.
	
	It also allows plugging other streams into the Bus, as inputs. The Bus practically
	merges all plugged-in streams and the values pushed using the [`push`](#push)
	method.
**/
@:jsRequire("baconjs", "Bus") extern class Bus<V> extends EventStream<V> {
	function new<V>();
	@:optional
	var sink : EventSink<V>;
	var pushing : Bool;
	@:optional
	var pushQueue : Array<V>;
	var ended : Bool;
	var subscriptions : Array<Subscription_<V>>;
	/**
		Plugs the given stream as an input to the Bus. All events from
		the given stream will be delivered to the subscribers of the Bus.
		Returns a function that can be used to unplug the same stream.
		
		The plug method practically allows you to merge in other streams after
		the creation of the Bus.
	**/
	function plug<V2>(input:Observable<V2>):Null<() -> Void>;
	/**
		Ends the stream. Sends an [End](end.html) event to all subscribers.
		After this call, there'll be no more events to the subscribers.
		Also, the [`push`](#push), [`error`](#error) and [`plug`](#plug) methods have no effect.
	**/
	function end():Dynamic;
	/**
		Pushes a new value to the stream.
	**/
	function push(value:V):Dynamic;
	/**
		Pushes an error to this stream.
	**/
	function error(error:Dynamic):Dynamic;
	function unsubAll():Void;
	function subscribeAll(newSink:EventSink<V>):() -> Void;
	function guardedSink(input:Observable<V>):EventSink<V>;
	function subscribeInput(subscription:Subscription_<V>):Unsub;
	function unsubscribeInput(input:Observable<Dynamic>):Void;
	function transformChanges(desc:Desc, f:EventStreamDelay<V>):Bus<V>;
	/**
		Returns this stream.
	**/
	function toEventStream():Bus<V>;
	/**
		Throttles the observable using a buffer so that at most one value event in minimumInterval is issued.
		Unlike [`throttle`](#observable-throttle), it doesn't discard the excessive events but buffers them instead, outputting
		them with a rate of at most one value per minimumInterval.
		
		Example:
		
		```js
		var throttled = source.bufferingThrottle(2)
		```
		
		```
		source:    asdf----asdf----
		throttled: a-s-d-f-a-s-d-f-
		```
	**/
	function bufferingThrottle(minimumInterval:Float):Bus<V>;
	/**
		Throttles stream/property by given amount
		of milliseconds, but so that event is only emitted after the given
		"quiet period". Does not affect emitting the initial value of a [Property](property.html).
		The difference of [`throttle`](#throttle) and [`debounce`](#debounce) is the same as it is in the
		same methods in jQuery.
		
		Example:
		
		```
		source:             asdf----asdf----
		source.debounce(2): -----f-------f--
		```
	**/
	function debounce(minimumInterval:Float):Bus<V>;
	/**
		Passes the first event in the
		stream through, but after that, only passes events after a given number
		of milliseconds have passed since previous output.
		
		Example:
		
		```
		source:                      asdf----asdf----
		source.debounceImmediate(2): a-d-----a-d-----
		```
	**/
	function debounceImmediate(minimumInterval:Float):Bus<V>;
	/**
		Delays the stream/property by given amount of milliseconds. Does not delay the initial value of a [`Property`](property.html).
		
		```js
		var delayed = source.delay(2)
		```
		
		```
		source:    asdf----asdf----
		delayed:   --asdf----asdf--
		```
	**/
	function delay(delayMs:Float):Bus<V>;
	/**
		Returns a stream/property where the function f
		is executed for each value, before dispatching to subscribers. This is
		useful for debugging, but also for stuff like calling the
		`preventDefault()` method for events. In fact, you can
		also use a property-extractor string instead of a function, as in
		`".preventDefault"`.
		
		Please note that for Properties, it's not guaranteed that the function will be called exactly once
		per event; when a Property loses all of its subscribers it will re-emit its current value when a
		new subscriber is added.
	**/
	function doAction(f:Function1<V, Dynamic>):Bus<V>;
	function doEnd(f:Function0<Dynamic>):Bus<V>;
	/**
		Returns a stream/property where the function f
		is executed for each error, before dispatching to subscribers.
		That is, same as [`doAction`](#observable-doaction) but for errors.
	**/
	function doError(f:Function1<Dynamic, Dynamic>):Bus<V>;
	/**
		Logs each value of the Observable to the console. doLog() behaves like [`log`](#log)
		but does not subscribe to the event stream. You can think of doLog() as a
		logger function that – unlike log() – is safe to use in production. doLog() is
		safe, because it does not cause the same surprising side-effects as log()
		does.
	**/
	function doLog(args:haxe.extern.Rest<Dynamic>):Bus<V>;
	/**
		Returns a stream/property that ends the on first [`Error`](error.html) event. The
		error is included in the output of the returned Observable.
	**/
	function endOnError(?predicate:Function1<Dynamic, Bool>):Bus<V>;
	/**
		Returns a stream containing [`Error`](error.html) events only.
		Same as filtering with a function that always returns false.
	**/
	function errors():Bus<V>;
	/**
		Filters values using given predicate function.
		Instead of a function, you can use a constant value (`true` to include all, `false` to exclude all).
		
		You can also filter values based on the value of a
		property. Event will be included in output [if and only if](http://en.wikipedia.org/wiki/If_and_only_if) the property holds `true`
		at the time of the event.
	**/
	function filter(f:ts.AnyOf3<Bool, Property<Bool>, Function1<V, Bool>>):Bus<V>;
	/**
		Takes the first element from the stream. Essentially `observable.take(1)`.
	**/
	function first():Bus<V>;
	/**
		Takes the last element from the stream. None, if stream is empty.
		
		
		Note:* `neverEndingStream.last()` creates the stream which doesn't produce any events and never ends.
	**/
	function last():Bus<V>;
	/**
		Logs each value of the Observable to the console.
		It optionally takes arguments to pass to console.log() alongside each
		value. To assist with chaining, it returns the original Observable. Note
		that as a side-effect, the observable will have a constant listener and
		will not be garbage-collected. So, use this for debugging only and
		remove from production code. For example:
		
		```js
		myStream.log("New event in myStream")
		```
		
		or just
		
		```js
		myStream.log()
		```
	**/
	function log(args:haxe.extern.Rest<Dynamic>):Bus<V>;
	/**
		Adds an extra [`Next`](next.html) event just before End. The value is created
		by calling the given function when the source stream ends. Instead of a
		function, a static value can be used.
	**/
	function mapEnd(f:ts.AnyOf2<V, Function0<V>>):Bus<V>;
	/**
		Maps errors using given function. More
		specifically, feeds the "error" field of the error event to the function
		and produces a [`Next`](next.html) event based on the return value.
	**/
	function mapError(f:ts.AnyOf2<V, Function1<Dynamic, V>>):Bus<V>;
	/**
		Sets the name of the observable. Overrides the default
		implementation of [`toString`](#tostring) and `inspect`.
		Returns the same observable, with mutated name.
	**/
	function name(name:String):Bus<V>;
	/**
		Skips the first n elements from the stream
	**/
	function skip(count:Float):Bus<V>;
	/**
		Drops consecutive equal elements. So,
		from `[1, 2, 2, 1]` you'd get `[1, 2, 1]`. Uses the `===` operator for equality
		checking by default. If the isEqual argument is supplied, checks by calling
		isEqual(oldValue, newValue). For instance, to do a deep comparison,you can
		use the isEqual function from [underscore.js](http://underscorejs.org/)
		like `stream.skipDuplicates(_.isEqual)`.
	**/
	function skipDuplicates(?isEqual:Equals<V>):Bus<V>;
	/**
		Returns a new stream/property which excludes all [Error](error.html) events in the source
	**/
	function skipErrors():Bus<V>;
	/**
		Skips elements from the source, until a value event
		appears in the given `starter` stream/property. In other words, starts delivering values
		from the source after first value appears in `starter`.
	**/
	function skipUntil(starter:Observable<Dynamic>):Bus<V>;
	/**
		Skips elements until the given predicate function returns falsy once, and then
		lets all events pass through. Instead of a predicate you can also pass in a `Property<boolean>` to skip elements
		while the Property holds a truthy value.
	**/
	function skipWhile(f:PredicateOrProperty<V>):Bus<V>;
	/**
		Takes at most n values from the stream and then ends the stream. If the stream has
		fewer than n values then it is unaffected.
		Equal to [`Bacon.never()`](../globals.html#never) if `n <= 0`.
	**/
	function take(count:Float):Bus<V>;
	/**
		Takes elements from source until a value event appears in the other stream.
		If other stream ends without value, it is ignored.
	**/
	function takeUntil(stopper:Observable<Dynamic>):Bus<V>;
	/**
		Takes while given predicate function holds true, and then ends. Alternatively, you can supply a boolean Property to take elements while the Property holds `true`.
	**/
	function takeWhile(f:PredicateOrProperty<V>):Bus<V>;
	/**
		Throttles stream/property by given amount
		of milliseconds. Events are emitted with the minimum interval of
		[`delay`](#observable-delay). The implementation is based on [`stream.bufferWithTime`](#stream-bufferwithtime).
		Does not affect emitting the initial value of a [`Property`](#property).
		
		Example:
		
		```js
		var throttled = source.throttle(2)
		```
		
		```
		source:    asdf----asdf----
		throttled: --s--f----s--f--
		```
	**/
	function throttle(minimumInterval:Float):Bus<V>;
	function withDesc(?desc:Desc):Bus<V>;
	/**
		Sets the structured description of the observable. The [`toString`](#tostring) and `inspect` methods
		use this data recursively to create a string representation for the observable. This method
		is probably useful for Bacon core / library / plugin development only.
		
		For example:
		
		     var src = Bacon.once(1)
		     var obs = src.map(function(x) { return -x })
		     console.log(obs.toString())
		     --> Bacon.once(1).map(function)
		     obs.withDescription(src, "times", -1)
		     console.log(obs.toString())
		     --> Bacon.once(1).times(-1)
		
		The method returns the same observable with mutated description.
	**/
	function withDescription(context:Dynamic, method:String, args:haxe.extern.Rest<Dynamic>):Bus<V>;
}