package baconjs;
/**
	EventStream represents a stream of events. It is an Observable object, meaning
	that you can listen to events in the stream using, for instance, the [`onValue`](#onvalue) method
	with a callback.
	
	To create an EventStream, you'll want to use one of the following factory methods:
	
	- From DOM EventTarget or Node.JS EventEmitter objects using [fromEvent](../globals.html#fromevent)
	- From a Promise using [fromPromise](../globals.html#frompromise)
	- From an unary callback using [fromCallback](../globals.html#fromcallback)
	- From a Node.js style callback using [fromNodeCallback](../globals.html#fromnodecallback)
	- From RxJs or Kefir observables using [fromESObservable](../globals.html#fromesobservable)
	- By polling a synchronous function using [fromPoll](../globals.html#fromPoll)
	- Emit a single event instantly using [once](../globals.html#once)
	- Emit a single event with a delay [later](../globals.html#later)
	- Emit the same event indefinitely using [interval](../globals.html#interval)
	- Emit an array of events instantly [fromArray](../globals.html#fromarray)
	- Emit an array of events with a delay [sequentially](../globals.html#sequentially)
	- Emit an array of events repeatedly with a delay [repeatedly](../globals.html#repeatedly)
	- Use a generator function to be called repeatedly [repeat](../globals.html#repeat)
	- Create a stream that never emits an event, ending immediately [never](../globals.html#never)
	- Create a stream that never emits an event, ending with a delay [silence](../globals.html#silence)
	- Create stream using a custom binder function [fromBinder](../globals.html#frombinder)
	- Wrap jQuery events using [asEventStream](../globals.html#_)
**/
@:jsRequire("baconjs", "EventStream") extern class EventStream<V> extends Observable<V> {
	function new<V>(desc:Desc, subscribe:Subscribe<V>, ?handler:EventSink<V>, ?options:EventStreamOptions);
	var _isEventStream : Bool;
	/**
		Buffers stream events with given delay.
		The buffer is flushed at most once in the given interval. So, if your input
		contains [1,2,3,4,5,6,7], then you might get two events containing [1,2,3,4]
		and [5,6,7] respectively, given that the flush occurs between numbers 4 and 5.
		
		Also works with a given "defer-function" instead
		of a delay. Here's a simple example, which is equivalent to
		stream.bufferWithTime(10):
		
		```js
		stream.bufferWithTime(function(f) { setTimeout(f, 10) })
		```
	**/
	function bufferWithTime(delay:ts.AnyOf2<Float, DelayFunction>):EventStream<Array<V>>;
	/**
		Buffers stream events with given count.
		The buffer is flushed when it contains the given number of elements or the source stream ends.
		
		So, if you buffer a stream of `[1, 2, 3, 4, 5]` with count `2`, you'll get output
		events with values `[1, 2]`, `[3, 4]` and `[5]`.
	**/
	function bufferWithCount(count:Float):EventStream<Array<V>>;
	/**
		Buffers stream events and
		flushes when either the buffer contains the given number elements or the
		given amount of milliseconds has passed since last buffered event.
	**/
	function bufferWithTimeOrCount(?delay:ts.AnyOf2<Float, DelayFunction>, ?count:Float):EventStream<Array<V>>;
	/**
		Concatenates two streams/properties into one stream/property so that
		it will deliver events from this observable until it ends and then deliver
		events from `other`. This means too that events from `other`,
		occurring before the end of this observable will not be included in the result
		stream/property.
	**/
	@:overload(function<V2>(other:Observable<V2>, ?options:EventStreamOptions):EventStream<ts.AnyOf2<V, V2>> { })
	function concat(other:Observable<V>, ?options:EventStreamOptions):EventStream<V>;
	function transformChanges(desc:Desc, f:EventStreamDelay<V>):EventStream<V>;
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
	function flatMap<V2>(f:SpawnerOrObservable<V, V2>):EventStream<V2>;
	/**
		A [`flatMapWithConcurrencyLimit`](#flatmapwithconcurrencylimit) with limit of 1.
	**/
	function flatMapConcat<V2>(f:SpawnerOrObservable<V, V2>):EventStream<V2>;
	/**
		Like [`flatMap`](#flatmap), but is applied only on [`Error`](error.html) events. Returned values go into the
		value stream, unless an error event is returned. As an example, one type of error could result in a retry and another just
		passed through, which can be implemented using flatMapError.
	**/
	function flatMapError<V2>(f:Function1<Dynamic, ts.AnyOf3<V2, Observable<V2>, Event_<V2>>>):EventStream<ts.AnyOf2<V, V2>>;
	/**
		Like [`flatMap`](#observable-flatmap), but only spawns a new
		stream if the previously spawned stream has ended.
	**/
	function flatMapFirst<V2>(f:SpawnerOrObservable<V, V2>):EventStream<V2>;
	/**
		Like [`flatMap`](#flatmap), but instead of including events from
		all spawned streams, only includes them from the latest spawned stream.
		You can think this as switching from stream to stream.
		Note that instead of a function, you can provide a stream/property too.
	**/
	function flatMapLatest<V2>(f:SpawnerOrObservable<V, V2>):EventStream<V2>;
	/**
		A super method of *flatMap* family. It limits the number of open spawned streams and buffers incoming events.
		[`flatMapConcat`](#flatmapconcat) is `flatMapWithConcurrencyLimit(1)` (only one input active),
		and [`flatMap`](#flatmap) is `flatMapWithConcurrencyLimit ∞` (all inputs are piped to output).
	**/
	function flatMapWithConcurrencyLimit<V2>(limit:Float, f:SpawnerOrObservable<V, V2>):EventStream<V2>;
	function flatMapEvent<V2>(f:EventSpawner<V, V2>):EventStream<V2>;
	/**
		Scans stream with given seed value and accumulator function, resulting to a Property.
		Difference to [`scan`](#scan) is that the function `f` can return an [`EventStream`](eventstream.html) or a [`Property`](property.html) instead
		of a pure value, meaning that you can use [`flatScan`](#flatscan) for asynchronous updates of state. It serializes
		updates so that that the next update will be queued until the previous one has completed.
	**/
	function flatScan<V2>(seed:V2, f:Function2<V2, V, Observable<V2>>):Property<V2>;
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
	function groupBy<V2>(keyF:Function1<V, String>, ?limitF:GroupTransformer<V, V2>):EventStream<EventStream<V2>>;
	/**
		Maps values using given function, returning a new
		stream/property. Instead of a function, you can also provide a [Property](property.html),
		in which case each element in the source stream will be mapped to the current value of
		the given property.
		
		Maps values using given function, returning a new
		stream/property. Instead of a function, you can also provide a [Property](property.html),
		in which case each element in the source stream will be mapped to the current value of
		the given property.
	**/
	@:overload(function<V2>(f:ts.AnyOf2<V2, Property<V2>>):EventStream<V2> { })
	function map<V2>(f:Function1<V, V2>):EventStream<V2>;
	/**
		Merges two streams into one stream that delivers events from both
	**/
	@:overload(function<V2>(other:EventStream<V2>):EventStream<ts.AnyOf2<V, V2>> { })
	function merge(other:EventStream<V>):EventStream<V>;
	/**
		Returns a stream/property that inverts boolean values (using `!`)
	**/
	function not():EventStream<Bool>;
	/**
		Adds a starting value to the stream/property, i.e. concats a
		single-element stream containing the single seed value  with this stream.
	**/
	function startWith(seed:V):EventStream<V>;
	function subscribeInternal(?sink:EventSink<V>):Unsub;
	/**
		Creates a Property based on the
		EventStream.
		
		Without arguments, you'll get a Property without an initial value.
		The Property will get its first actual value from the stream, and after that it'll
		always have a current value.
		
		You can also give an initial value that will be used as the current value until
		the first value comes from the stream.
	**/
	function toProperty(?initValue:V):Property<V>;
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
	function transform<V2>(transformer:Transformer<V, V2>, ?desc:Desc):EventStream<V2>;
	/**
		Creates an EventStream/Property by sampling a given `samplee`
		stream/property value at each event from the this stream/property.
	**/
	function withLatestFrom<V2, R>(samplee:Observable<V2>, f:Function2<V, V2, R>):EventStream<R>;
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
	function withStateMachine<State, Out>(initState:State, f:StateF<V, State, Out>):EventStream<Out>;
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
	function bufferingThrottle(minimumInterval:Float):EventStream<V>;
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
	function debounce(minimumInterval:Float):EventStream<V>;
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
	function debounceImmediate(minimumInterval:Float):EventStream<V>;
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
	function delay(delayMs:Float):EventStream<V>;
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
	function doAction(f:Function1<V, Dynamic>):EventStream<V>;
	function doEnd(f:Function0<Dynamic>):EventStream<V>;
	/**
		Returns a stream/property where the function f
		is executed for each error, before dispatching to subscribers.
		That is, same as [`doAction`](#observable-doaction) but for errors.
	**/
	function doError(f:Function1<Dynamic, Dynamic>):EventStream<V>;
	/**
		Logs each value of the Observable to the console. doLog() behaves like [`log`](#log)
		but does not subscribe to the event stream. You can think of doLog() as a
		logger function that – unlike log() – is safe to use in production. doLog() is
		safe, because it does not cause the same surprising side-effects as log()
		does.
	**/
	function doLog(args:haxe.extern.Rest<Dynamic>):EventStream<V>;
	/**
		Returns a stream/property that ends the on first [`Error`](error.html) event. The
		error is included in the output of the returned Observable.
	**/
	function endOnError(?predicate:Function1<Dynamic, Bool>):EventStream<V>;
	/**
		Returns a stream containing [`Error`](error.html) events only.
		Same as filtering with a function that always returns false.
	**/
	function errors():EventStream<V>;
	/**
		Filters values using given predicate function.
		Instead of a function, you can use a constant value (`true` to include all, `false` to exclude all).
		
		You can also filter values based on the value of a
		property. Event will be included in output [if and only if](http://en.wikipedia.org/wiki/If_and_only_if) the property holds `true`
		at the time of the event.
	**/
	function filter(f:ts.AnyOf3<Bool, Property<Bool>, Function1<V, Bool>>):EventStream<V>;
	/**
		Takes the first element from the stream. Essentially `observable.take(1)`.
	**/
	function first():EventStream<V>;
	/**
		Takes the last element from the stream. None, if stream is empty.
		
		
		Note:* `neverEndingStream.last()` creates the stream which doesn't produce any events and never ends.
	**/
	function last():EventStream<V>;
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
	function log(args:haxe.extern.Rest<Dynamic>):EventStream<V>;
	/**
		Adds an extra [`Next`](next.html) event just before End. The value is created
		by calling the given function when the source stream ends. Instead of a
		function, a static value can be used.
	**/
	function mapEnd(f:ts.AnyOf2<V, Function0<V>>):EventStream<V>;
	/**
		Maps errors using given function. More
		specifically, feeds the "error" field of the error event to the function
		and produces a [`Next`](next.html) event based on the return value.
	**/
	function mapError(f:ts.AnyOf2<V, Function1<Dynamic, V>>):EventStream<V>;
	/**
		Sets the name of the observable. Overrides the default
		implementation of [`toString`](#tostring) and `inspect`.
		Returns the same observable, with mutated name.
	**/
	function name(name:String):EventStream<V>;
	/**
		Skips the first n elements from the stream
	**/
	function skip(count:Float):EventStream<V>;
	/**
		Drops consecutive equal elements. So,
		from `[1, 2, 2, 1]` you'd get `[1, 2, 1]`. Uses the `===` operator for equality
		checking by default. If the isEqual argument is supplied, checks by calling
		isEqual(oldValue, newValue). For instance, to do a deep comparison,you can
		use the isEqual function from [underscore.js](http://underscorejs.org/)
		like `stream.skipDuplicates(_.isEqual)`.
	**/
	function skipDuplicates(?isEqual:Equals<V>):EventStream<V>;
	/**
		Returns a new stream/property which excludes all [Error](error.html) events in the source
	**/
	function skipErrors():EventStream<V>;
	/**
		Skips elements from the source, until a value event
		appears in the given `starter` stream/property. In other words, starts delivering values
		from the source after first value appears in `starter`.
	**/
	function skipUntil(starter:Observable<Dynamic>):EventStream<V>;
	/**
		Skips elements until the given predicate function returns falsy once, and then
		lets all events pass through. Instead of a predicate you can also pass in a `Property<boolean>` to skip elements
		while the Property holds a truthy value.
	**/
	function skipWhile(f:PredicateOrProperty<V>):EventStream<V>;
	/**
		Takes at most n values from the stream and then ends the stream. If the stream has
		fewer than n values then it is unaffected.
		Equal to [`Bacon.never()`](../globals.html#never) if `n <= 0`.
	**/
	function take(count:Float):EventStream<V>;
	/**
		Takes elements from source until a value event appears in the other stream.
		If other stream ends without value, it is ignored.
	**/
	function takeUntil(stopper:Observable<Dynamic>):EventStream<V>;
	/**
		Takes while given predicate function holds true, and then ends. Alternatively, you can supply a boolean Property to take elements while the Property holds `true`.
	**/
	function takeWhile(f:PredicateOrProperty<V>):EventStream<V>;
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
	function throttle(minimumInterval:Float):EventStream<V>;
	function withDesc(?desc:Desc):EventStream<V>;
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
	function withDescription(context:Dynamic, method:String, args:haxe.extern.Rest<Dynamic>):EventStream<V>;
}