package baconjs;
/**
	Observable is the base class for [EventsStream](eventstream.html) and [Property](property.html)
**/
@:jsRequire("baconjs", "Observable") extern class Observable<V> {
	function new<V>(desc:Desc);
	/**
		Contains a structured version of what [`toString`](#tostring) returns.
		The structured description is an object that contains the fields `context`, `method` and `args`.
		For example, for `Bacon.fromArray([1,2,3]).desc` you'd get
		
		{ context: "Bacon", method: "fromArray", args: [[1,2,3]] }
	**/
	var desc : Desc;
	/**
		Unique numeric id of this Observable. Implemented using a simple counter starting from 1.
	**/
	var id : Float;
	var initialDesc : Desc;
	@:optional
	var _name : String;
	var _isObservable : Bool;
	/**
		Creates a Property that indicates whether
		`observable` is awaiting `otherObservable`, i.e. has produced a value after the latest
		value from `otherObservable`. This is handy for keeping track whether we are
		currently awaiting an AJAX response:
		
		```js
		var showAjaxIndicator = ajaxRequest.awaiting(ajaxResponse)
		```
	**/
	function awaiting(other:Observable<Dynamic>):Property<Bool>;
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
	function bufferingThrottle(minimumInterval:Float):Observable<V>;
	/**
		Creates a stream of changes to the Property. The stream *does not* include
		an event for the current value of the Property at the time this method was called.
		For EventStreams, this method returns the stream itself.
	**/
	function changes():EventStream<V>;
	/**
		Combines the latest values of the two
		streams or properties using a two-arg function. Similarly to [`scan`](#scan), you can use a
		method name instead, so you could do `a.combine(b, ".concat")` for two
		properties with array value. The result is a [Property](property.html).
	**/
	function combine<V2, R>(right:Observable<V2>, f:Function2<V, V2, R>):Property<R>;
	/**
		Concatenates two streams/properties into one stream/property so that
		it will deliver events from this observable until it ends and then deliver
		events from `other`. This means too that events from `other`,
		occurring before the end of this observable will not be included in the result
		stream/property.
	**/
	@:overload(function<V2>(other:Observable<V2>):Observable<ts.AnyOf2<V, V2>> { })
	function concat(other:Observable<V>):Observable<V>;
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
	function debounce(minimumInterval:Float):Observable<V>;
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
	function debounceImmediate(minimumInterval:Float):Observable<V>;
	/**
		Decodes input using the given mapping. Is a
		bit like a switch-case or the decode function in Oracle SQL. For
		example, the following would map the value 1 into the string "mike"
		and the value 2 into the value of the `who` property.
		
		```js
		property.decode({1 : "mike", 2 : who})
		```
		
		This is actually based on [`combineTemplate`](#combinetemplate) so you can compose static
		and dynamic data quite freely, as in
		
		```js
		property.decode({1 : { type: "mike" }, 2 : { type: "other", whoThen : who }})
		```
		
		The return value of [`decode`](#decode) is always a [`Property`](property.html).
	**/
	function decode<T>(cases:T):Property<FlattenedObservable<Dynamic>>;
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
	function delay(delayMs:Float):Observable<V>;
	function transformChanges(desc:Desc, f:EventStreamDelay<V>):Observable<V>;
	/**
		Returns the an array of dependencies that the Observable has. For instance, for `a.map(function() {}).deps()`, would return `[a]`.
		This method returns the "visible" dependencies only, skipping internal details.  This method is thus suitable for visualization tools.
		Internally, many combinator functions depend on other combinators to create intermediate Observables that the result will actually depend on.
		The `deps` method will skip these internal dependencies. See also: [internalDeps](#internaldeps)
	**/
	function deps():Array<Observable<Dynamic>>;
	/**
		Returns a Property that represents the result of a comparison
		between the previous and current value of the Observable. For the initial value of the Observable,
		the previous value will be the given start.
		
		Example:
		
		```js
		var distance = function (a,b) { return Math.abs(b - a) }
		Bacon.sequentially(1, [1,2,3]).diff(0, distance)
		```
		
		This would result to following elements in the result stream:
		
		     1 - 0 = 1
		     2 - 1 = 1
		     3 - 2 = 1
	**/
	function diff<V2>(start:V, f:Function2<V, V, V2>):Property<V2>;
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
	function doAction(f:Function1<V, Dynamic>):Observable<V>;
	function doEnd(f:Function0<Dynamic>):Observable<V>;
	/**
		Returns a stream/property where the function f
		is executed for each error, before dispatching to subscribers.
		That is, same as [`doAction`](#observable-doaction) but for errors.
	**/
	function doError(f:Function1<Dynamic, Dynamic>):Observable<V>;
	/**
		Logs each value of the Observable to the console. doLog() behaves like [`log`](#log)
		but does not subscribe to the event stream. You can think of doLog() as a
		logger function that – unlike log() – is safe to use in production. doLog() is
		safe, because it does not cause the same surprising side-effects as log()
		does.
	**/
	function doLog(args:haxe.extern.Rest<Dynamic>):Observable<V>;
	function endAsValue():Observable<{ }>;
	/**
		Returns a stream/property that ends the on first [`Error`](error.html) event. The
		error is included in the output of the returned Observable.
	**/
	function endOnError(?predicate:Function1<Dynamic, Bool>):Observable<V>;
	/**
		Returns a stream containing [`Error`](error.html) events only.
		Same as filtering with a function that always returns false.
	**/
	function errors():Observable<V>;
	/**
		Filters values using given predicate function.
		Instead of a function, you can use a constant value (`true` to include all, `false` to exclude all).
		
		You can also filter values based on the value of a
		property. Event will be included in output [if and only if](http://en.wikipedia.org/wiki/If_and_only_if) the property holds `true`
		at the time of the event.
	**/
	function filter(f:ts.AnyOf3<Bool, Property<Bool>, Function1<V, Bool>>):Observable<V>;
	/**
		Takes the first element from the stream. Essentially `observable.take(1)`.
	**/
	function first():Observable<V>;
	/**
		Returns a Promise which will be resolved with the first event coming from an Observable.
		Like [`toPromise`](#topromise), the global ES6 promise implementation will be used unless a promise
		constructor is given.
	**/
	function firstToPromise(?PromiseCtr:ts.lib.Function):ts.lib.Promise<V>;
	/**
		For each element in the source stream, spawn a new
		stream/property using the function `f`. Collect events from each of the spawned
		streams into the result stream/property. Note that instead of a function, you can provide a
		stream/property too. Also, the return value of function `f` can be either an
		`Observable` (stream/property) or a constant value.
		
		`stream.flatMap()` can be used conveniently with [`Bacon.once()`](../globals.html#once) and [`Bacon.never()`](../globals.html#never)
		for converting and filtering at the same time, including only some of the results.
		
		Example - converting strings to integers, skipping empty values:
		
		```js
		stream.flatMap(function(text) {
		     return (text != "") ? parseInt(text) : Bacon.never()
		})
		```
	**/
	function flatMap<V2>(f:SpawnerOrObservable<V, V2>):Observable<V2>;
	/**
		A [`flatMapWithConcurrencyLimit`](#flatmapwithconcurrencylimit) with limit of 1.
	**/
	function flatMapConcat<V2>(f:SpawnerOrObservable<V, V2>):Observable<V2>;
	/**
		Like [`flatMap`](#flatmap), but is applied only on [`Error`](error.html) events. Returned values go into the
		value stream, unless an error event is returned. As an example, one type of error could result in a retry and another just
		passed through, which can be implemented using flatMapError.
	**/
	function flatMapError<V2>(f:Function1<Dynamic, ts.AnyOf3<V2, Observable<V2>, Event_<V2>>>):Observable<ts.AnyOf2<V, V2>>;
	function flatMapEvent<V2>(f:EventSpawner<V, V2>):Observable<V2>;
	/**
		Like [`flatMap`](#observable-flatmap), but only spawns a new
		stream if the previously spawned stream has ended.
	**/
	function flatMapFirst<V2>(f:SpawnerOrObservable<V, V2>):Observable<V2>;
	/**
		Like [`flatMap`](#flatmap), but instead of including events from
		all spawned streams, only includes them from the latest spawned stream.
		You can think this as switching from stream to stream.
		Note that instead of a function, you can provide a stream/property too.
	**/
	function flatMapLatest<V2>(f:SpawnerOrObservable<V, V2>):Observable<V2>;
	/**
		A super method of *flatMap* family. It limits the number of open spawned streams and buffers incoming events.
		[`flatMapConcat`](#flatmapconcat) is `flatMapWithConcurrencyLimit(1)` (only one input active),
		and [`flatMap`](#flatmap) is `flatMapWithConcurrencyLimit ∞` (all inputs are piped to output).
	**/
	function flatMapWithConcurrencyLimit<V2>(limit:Float, f:SpawnerOrObservable<V, V2>):Observable<V2>;
	/**
		Works like [`scan`](#scan) but only emits the final
		value, i.e. the value just before the observable ends. Returns a
		[`Property`](property.html).
	**/
	function fold<V2>(seed:V2, f:Accumulator<V, V2>):Property<V2>;
	/**
		An alias for [onValue](#onvalue).
		
		Subscribes a given handler function to the observable. Function will be called for each new value (not for errors or stream end).
	**/
	function forEach(?f:Sink<V>):Unsub;
	/**
		Groups stream events to new streams by `keyF`. Optional `limitF` can be provided to limit grouped
		stream life. Stream transformed by `limitF` is passed on if provided. `limitF` gets grouped stream
		and the original event causing the stream to start as parameters.
		
		Calculator for grouped consecutive values until group is cancelled:
		
		```
		var events = [
		   {id: 1, type: "add", val: 3 },
		   {id: 2, type: "add", val: -1 },
		   {id: 1, type: "add", val: 2 },
		   {id: 2, type: "cancel"},
		   {id: 3, type: "add", val: 2 },
		   {id: 3, type: "cancel"},
		   {id: 1, type: "add", val: 1 },
		   {id: 1, type: "add", val: 2 },
		   {id: 1, type: "cancel"}
		]
		
		function keyF(event) {
		   return event.id
		}
		
		function limitF(groupedStream, groupStartingEvent) {
		   var cancel = groupedStream.filter(function(x) { return x.type === "cancel"}).take(1)
		   var adds = groupedStream.filter(function(x) { return x.type === "add" })
		   return adds.takeUntil(cancel).map(".val")
		}
		
		Bacon.sequentially(2, events)
		   .groupBy(keyF, limitF)
		   .flatMap(function(groupedStream) {
		     return groupedStream.fold(0, function(acc, x) { return acc + x })
		   })
		   .onValue(function(sum) {
		     console.log(sum)
		     // returns [-1, 2, 8] in an order
		   })
		```
	**/
	function groupBy<V2>(keyF:Function1<V, String>, ?limitF:GroupTransformer<V, V2>):Observable<EventStream<V2>>;
	/**
		Pauses and buffers the event stream if last event in valve is truthy.
		All buffered events are released when valve becomes falsy.
	**/
	function holdWhen(valve:Property<Bool>):EventStream<V>;
	function inspect():String;
	/**
		Returns the true dependencies of the observable, including the intermediate "hidden" Observables.
		This method is for Bacon.js internal purposes but could be useful for debugging/analysis tools as well.
		See also: [deps](#deps)
	**/
	function internalDeps():Array<Dynamic>;
	/**
		Takes the last element from the stream. None, if stream is empty.
		
		
		Note:* `neverEndingStream.last()` creates the stream which doesn't produce any events and never ends.
	**/
	function last():Observable<V>;
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
	function log(args:haxe.extern.Rest<Dynamic>):Observable<V>;
	/**
		Maps values using given function, returning a new
		stream/property. Instead of a function, you can also provide a [Property](property.html),
		in which case each element in the source stream will be mapped to the current value of
		the given property.
	**/
	function map<V2>(f:ts.AnyOf3<V2, Function1<V, V2>, Property<V2>>):Observable<V2>;
	/**
		Adds an extra [`Next`](next.html) event just before End. The value is created
		by calling the given function when the source stream ends. Instead of a
		function, a static value can be used.
	**/
	function mapEnd(f:ts.AnyOf2<V, Function0<V>>):Observable<V>;
	/**
		Maps errors using given function. More
		specifically, feeds the "error" field of the error event to the function
		and produces a [`Next`](next.html) event based on the return value.
	**/
	function mapError(f:ts.AnyOf2<V, Function1<Dynamic, V>>):Observable<V>;
	/**
		Sets the name of the observable. Overrides the default
		implementation of [`toString`](#tostring) and `inspect`.
		Returns the same observable, with mutated name.
	**/
	function name(name:String):Observable<V>;
	/**
		Returns a stream/property that inverts boolean values (using `!`)
	**/
	function not():Observable<Bool>;
	/**
		Subscribes a callback to stream end. The function will be called when the stream ends.
		Just like `subscribe`, this method returns a function for unsubscribing.
	**/
	function onEnd(?f:VoidSink):Unsub;
	/**
		Subscribes a handler to error events. The function will be called for each error in the stream.
		Just like `subscribe`, this method returns a function for unsubscribing.
	**/
	function onError(?f:Sink<Dynamic>):Unsub;
	/**
		Subscribes a given handler function to the observable. Function will be called for each new value.
		This is the simplest way to assign a side-effect to an observable. The difference
		to the `subscribe` method is that the actual stream values are
		received, instead of [`Event`](event) objects.
		Just like `subscribe`, this method returns a function for unsubscribing.
		`stream.onValue` and `property.onValue` behave similarly, except that the latter also
		pushes the initial value of the property, in case there is one.
	**/
	function onValue(?f:Sink<V>):Unsub;
	/**
		Like [`onValue`](#onvalue), but splits the value (assuming its an array) as function arguments to `f`.
		Only applicable for observables with arrays as values.
	**/
	function onValues(f:ts.lib.Function):Unsub;
	/**
		A synonym for [scan](#scan).
	**/
	function reduce<V2>(seed:V2, f:Accumulator<V, V2>):Property<V2>;
	/**
		Creates an EventStream/Property by sampling this
		stream/property value at each event from the `sampler` stream. The result
		will contain the sampled value at each event in the source stream.
	**/
	@:overload(function(sampler:Property<Dynamic>):Property<V> { })
	@:overload(function(sampler:Observable<Dynamic>):Observable<V> { })
	function sampledBy(sampler:EventStream<Dynamic>):EventStream<V>;
	/**
		Scans stream/property with given seed value and
		accumulator function, resulting to a Property. For example, you might
		use zero as seed and a "plus" function as the accumulator to create
		an "integral" property. Instead of a function, you can also supply a
		method name such as ".concat", in which case this method is called on
		the accumulator value and the new stream value is used as argument.
		
		Example:
		
		```js
		var plus = function (a,b) { return a + b }
		Bacon.sequentially(1, [1,2,3]).scan(0, plus)
		```
		
		This would result to following elements in the result stream:
		
		     seed value = 0
		     0 + 1 = 1
		     1 + 2 = 3
		     3 + 3 = 6
		
		When applied to a Property as in `r = p.scan(seed, f)`, there's a (hopefully insignificant) catch:
		The starting value for `r` depends on whether `p` has an
		initial value when scan is applied. If there's no initial value, this works
		identically to EventStream.scan: the `seed` will be the initial value of
		`r`. However, if `r` already has a current/initial value `x`, the
		seed won't be output as is. Instead, the initial value of `r` will be `f(seed, x)`. This makes sense,
		because there can only be 1 initial value for a Property at a time.
	**/
	function scan<V2>(seed:V2, f:Accumulator<V, V2>):Property<V2>;
	/**
		Skips the first n elements from the stream
	**/
	function skip(count:Float):Observable<V>;
	/**
		Drops consecutive equal elements. So,
		from `[1, 2, 2, 1]` you'd get `[1, 2, 1]`. Uses the `===` operator for equality
		checking by default. If the isEqual argument is supplied, checks by calling
		isEqual(oldValue, newValue). For instance, to do a deep comparison,you can
		use the isEqual function from [underscore.js](http://underscorejs.org/)
		like `stream.skipDuplicates(_.isEqual)`.
	**/
	function skipDuplicates(?isEqual:Equals<V>):Observable<V>;
	/**
		Returns a new stream/property which excludes all [Error](error.html) events in the source
	**/
	function skipErrors():Observable<V>;
	/**
		Skips elements from the source, until a value event
		appears in the given `starter` stream/property. In other words, starts delivering values
		from the source after first value appears in `starter`.
	**/
	function skipUntil(starter:Observable<Dynamic>):Observable<V>;
	/**
		Skips elements until the given predicate function returns falsy once, and then
		lets all events pass through. Instead of a predicate you can also pass in a `Property<boolean>` to skip elements
		while the Property holds a truthy value.
	**/
	function skipWhile(f:PredicateOrProperty<V>):Observable<V>;
	/**
		Returns a Property that represents a
		"sliding window" into the history of the values of the Observable. The
		result Property will have a value that is an array containing the last `n`
		values of the original observable, where `n` is at most the value of the
		`max` argument, and at least the value of the `min` argument. If the
		`min` argument is omitted, there's no lower limit of values.
		
		For example, if you have a stream `s` with value a sequence 1 - 2 - 3 - 4 - 5, the
		respective values in `s.slidingWindow(2)` would be [] - [1] - [1,2] -
		[2,3] - [3,4] - [4,5]. The values of `s.slidingWindow(2,2)`would be
		[1,2] - [2,3] - [3,4] - [4,5].
	**/
	function slidingWindow(maxValues:Float, ?minValues:Float):Property<Array<V>>;
	/**
		Adds a starting value to the stream/property, i.e. concats a
		single-element stream containing the single seed value  with this stream.
	**/
	function startWith(seed:V):Observable<V>;
	/**
		subscribes given handler function to event stream. Function will receive [event](event.html) objects
		for all new value, end and error events in the stream.
		The subscribe() call returns a `unsubscribe` function that you can call to unsubscribe.
		You can also unsubscribe by returning [`Bacon.noMore`](../globals.html#nomore) from the handler function as a reply
		to an Event.
		`stream.subscribe` and `property.subscribe` behave similarly, except that the latter also
		pushes the initial value of the property, in case there is one.
	**/
	function subscribe(?sink:EventSink<V>):Unsub;
	function subscribeInternal(sink:EventSink<V>):Unsub;
	/**
		Takes at most n values from the stream and then ends the stream. If the stream has
		fewer than n values then it is unaffected.
		Equal to [`Bacon.never()`](../globals.html#never) if `n <= 0`.
	**/
	function take(count:Float):Observable<V>;
	/**
		Takes elements from source until a value event appears in the other stream.
		If other stream ends without value, it is ignored.
	**/
	function takeUntil(stopper:Observable<Dynamic>):Observable<V>;
	/**
		Takes while given predicate function holds true, and then ends. Alternatively, you can supply a boolean Property to take elements while the Property holds `true`.
	**/
	function takeWhile(f:PredicateOrProperty<V>):Observable<V>;
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
	function throttle(minimumInterval:Float):Observable<V>;
	function toEventStream():EventStream<V>;
	/**
		Returns a Promise which will be resolved with the last event coming from an Observable.
		The global ES6 promise implementation will be used unless a promise constructor is given.
		Use a shim if you need to support legacy browsers or platforms.
		[caniuse promises](http://caniuse.com/#feat=promises).
		
		See also [firstToPromise](#firsttopromise).
	**/
	function toPromise(?PromiseCtr:ts.lib.Function):ts.lib.Promise<V>;
	/**
		In case of EventStream, creates a Property based on the EventStream.
		
		In case of Property, returns the Property itself.
	**/
	function toProperty():Property<V>;
	/**
		Returns a textual description of the Observable. For instance, `Bacon.once(1).map(function() {}).toString()` would return "Bacon.once(1).map(function)".
	**/
	function toString():String;
	/**
		TODO: proper documentation missing
		Lets you do more custom event handling: you
		get all events to your function and you can output any number of events
		and end the stream if you choose. For example, to send an error and end
		the stream in case a value is below zero:
		
		```js
		if (Bacon.hasValue(event) && event.value < 0) {
		sink(new Bacon.Error("Value below zero"));
		return sink(end());
		} else {
		return sink(event);
		}
		```
		
		Note that it's important to return the value from `sink` so that
		the connection to the underlying stream will be closed when no more
		events are needed.
	**/
	function transform<V2>(transformer:Transformer<V, V2>, ?desc:Desc):Observable<V2>;
	function withDesc(?desc:Desc):Observable<V>;
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
	function withDescription(context:Dynamic, method:String, args:haxe.extern.Rest<Dynamic>):Observable<V>;
	/**
		Creates an EventStream/Property by sampling a given `samplee`
		stream/property value at each event from the this stream/property.
	**/
	function withLatestFrom<V2, R>(samplee:Observable<V2>, f:Function2<V, V2, R>):Observable<R>;
	/**
		Lets you run a state machine
		on an observable. Give it an initial state object and a state
		transformation function that processes each incoming event and
		returns an array containing the next state and an array of output
		events. Here's an example where we calculate the total sum of all
		numbers in the stream and output the value on stream end:
		
		```js
		Bacon.fromArray([1,2,3])
		   .withStateMachine(0, function(sum, event) {
		     if (event.hasValue)
		       return [sum + event.value, []]
		     else if (event.isEnd)
		       return [undefined, [new Bacon.Next(sum), event]]
		     else
		       return [sum, [event]]
		   })
		```
	**/
	function withStateMachine<State, Out>(initState:State, f:StateF<V, State, Out>):Observable<Out>;
	/**
		Returns an EventStream with elements
		pair-wise lined up with events from this and the other EventStream or Property.
		A zipped stream will publish only when it has a value from each
		source and will only produce values up to when any single source ends.
		
		The given function `f` is used to create the result value from value in the two
		sources. If no function is given, the values are zipped into an array.
		
		Be careful not to have too much "drift" between streams. If one stream
		produces many more values than some other excessive buffering will
		occur inside the zipped observable.
		
		Example 1:
		
		```js
		var x = Bacon.fromArray([1, 2])
		var y = Bacon.fromArray([3, 4])
		x.zip(y, function(x, y) { return x + y })
		
		# produces values 4, 6
		```
		
		See also [`zipWith`](../globals.html#zipwith) and [`zipAsArray`](../globals.html/zipasarray) for zipping more than 2 sources.
	**/
	function zip<V2, R>(other:Observable<V2>, f:Function2<V, V2, R>):EventStream<R>;
}