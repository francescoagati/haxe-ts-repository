@:jsRequire("baconjs") @valueModuleOnly extern class Baconjs {
	/**
		Bacon.js version as string
	**/
	static var version : String;
	/**
		The `when` method provides a generalization of the [`zip`](classes/observable.html#zip) function. While zip
		synchronizes events from multiple streams pairwse, the join patterns used in `when` allow
		the implementation of more advanced synchronization patterns.
		
		Consider implementing a game with discrete time ticks. We want to
		handle key-events synchronized on tick-events, with at most one key
		event handled per tick. If there are no key events, we want to just
		process a tick.
		
		```js
		Bacon.when(
		[tick, keyEvent, function(_, k) { handleKeyEvent(k); return handleTick(); }],
		[tick, handleTick])
		```
		
		Order is important here. If the [tick] patterns had been written
		first, this would have been tried first, and preferred at each tick.
		
		Join patterns are indeed a generalization of zip, and for EventStreams, zip is
		equivalent to a single-rule join pattern. The following observables
		have the same output, assuming that all sources are EventStreams.
		
		```js
		Bacon.zipWith(a,b,c, combine)
		Bacon.when([a,b,c], combine)
		```
		
		Note that [`Bacon.when`](#bacon-when) does not trigger updates for events from Properties though;
		if you use a Property in your pattern, its value will be just sampled when all the
		other sources (EventStreams) have a value. This is useful when you need a value of a Property
		in your calculations. If you want your pattern to fire for a Property too, you can
		convert it into an EventStream using [`property.changes()`](#property-changes) or [`property.toEventStream()`](#property-toeventstream)
	**/
	static function when<O>(patterns:haxe.extern.Rest<baconjs.Pattern<O>>):baconjs.EventStream<O>;
	static function combineTemplate<T>(template:T):baconjs.Property<baconjs.CombinedTemplate<T>>;
	/**
		Concatenates given array of EventStreams or Properties. Works by subscribing to the first source, and listeing to that
		until it ends. Then repeatedly subscribes to the next source, until all sources have ended.
		
		See [`concat`](#observable-concat)
	**/
	static function concatAll<V>(streams_:haxe.extern.Rest<ts.AnyOf2<baconjs.Observable<V>, Array<baconjs.Observable<V>>>>):baconjs.EventStream<V>;
	/**
		Creates a constant property with value `x`.
	**/
	static function constant<V>(x:V):baconjs.Property<V>;
	/**
		Creates an EventStream that delivers the given
		series of values (given as array) to the first subscriber. The stream ends after these
		values have been delivered. You can also send [`Bacon.Error`](classes/error.html) events, or
		any combination of pure values and error events like this:
		`Bacon.fromArray([1, new Bacon.Error()])
	**/
	static function fromArray<T>(values:Array<ts.AnyOf2<T, baconjs.Event_<T>>>):baconjs.EventStream<T>;
	/**
		If none of the other factory methods above apply, you may of course roll your own EventStream by using `fromBinder`.
		
		<a name="bacon-frombinder"></a>
		[`Bacon.fromBinder(subscribe)`](#bacon-frombinder "Bacon.fromBinder(subscribe)") The parameter `subscribe` is a function that accepts a `sink` which is a function that your `subscribe` function can "push" events to.
		
		For example:
		
		```js
		var stream = Bacon.fromBinder(function(sink) {
		  sink("first value")
		  sink([new Bacon.Next("2nd"), new Bacon.Next("3rd")])
		  sink(new Bacon.Error("oops, an error"))
		  sink(new Bacon.End())
		  return function() {
		     // unsub functionality here, this one's a no-op
		  }
		})
		stream.log()
		```
		
		As shown in the example, you can push
		
		- A plain value, like `"first value"`
		- An [`Event`](#event) object including [`Bacon.Error`](#bacon-error) (wraps an error) and [`Bacon.End`](#bacon-end) (indicates
		stream end).
		- An array of [event](#event) objects at once
		
		Other examples can be found on [JSFiddle](http://jsfiddle.net/PG4c4/) and the
		[Bacon.js blog](http://baconjs.blogspot.fi/2013/12/wrapping-things-in-bacon.html).
		
		The `subscribe` function must return a function. Let's call that function
		`unsubscribe`. The returned function can be used by the subscriber (directly or indirectly) to
		unsubscribe from the EventStream. It should release all resources that the subscribe function reserved.
		
		The `sink` function may return [`Bacon.noMore`](#bacon-nomore) (as well as [`Bacon.more`](#bacon-more)
		or any other value). If it returns [`Bacon.noMore`](#bacon-nomore), no further events will be consumed
		by the subscriber. The `subscribe` function may choose to clean up all resources at this point (e.g.,
		by calling `unsubscribe`). This is usually not necessary, because further calls to `sink` are ignored,
		but doing so can increase performance in [rare cases](https://github.com/baconjs/bacon.js/issues/484).
		
		The EventStream will wrap your `subscribe` function so that it will
		only be called when the first stream listener is added, and the `unsubscribe`
		function is called only after the last listener has been removed.
		The subscribe-unsubscribe cycle may of course be repeated indefinitely,
		so prepare for multiple calls to the subscribe function.
	**/
	static function fromBinder<V>(binder:baconjs.Binder<V>, ?eventTransformer:baconjs.EventTransformer<V>):baconjs.EventStream<V>;
	/**
		creates an EventStream from events
		on a DOM EventTarget or Node.JS EventEmitter object, or an object that supports event listeners using `on`/`off` methods.
		You can also pass an optional function that transforms the emitted
		events' parameters.
		
		The simple form:
		
		```js
		Bacon.fromEvent(document.body, "click").onValue(function() { alert("Bacon!") })
		```
		
		Using a binder function:
		
		```js
		Bacon.fromEvent(
		window,
		function(binder, listener) {
		    binder("scroll", listener, {passive: true})
		  }
		).onValue(function() {
		  console.log(window.scrollY)
		})
		```
	**/
	static function fromEvent<V>(target:Dynamic, eventSource:ts.AnyOf2<String, baconjs.EventSourceFn>, ?eventTransformer:baconjs.EventTransformer<V>):baconjs.EventStream<V>;
	/**
		creates an EventStream from events
		on a DOM EventTarget or Node.JS EventEmitter object, or an object that supports event listeners using `on`/`off` methods.
		You can also pass an optional function that transforms the emitted
		events' parameters.
		
		The simple form:
		
		```js
		Bacon.fromEvent(document.body, "click").onValue(function() { alert("Bacon!") })
		```
		
		Using a binder function:
		
		```js
		Bacon.fromEvent(
		window,
		function(binder, listener) {
		    binder("scroll", listener, {passive: true})
		  }
		).onValue(function() {
		  console.log(window.scrollY)
		})
		```
	**/
	static function fromEventTarget<V>(target:Dynamic, eventSource:ts.AnyOf2<String, baconjs.EventSourceFn>, ?eventTransformer:baconjs.EventTransformer<V>):baconjs.EventStream<V>;
	/**
		Polls given function with given interval.
		Function should return Events: either [`Bacon.Next`](classes/next.html) or [`Bacon.End`](classes/end.html). Polling occurs only
		when there are subscribers to the stream. Polling ends permanently when
		`f` returns [`Bacon.End`](classes/end.html).
	**/
	static function fromPoll<V>(delay:Float, poll:baconjs.PollFunction<V>):baconjs.EventStream<V>;
	static function groupSimultaneous<V>(streams:haxe.extern.Rest<ts.AnyOf2<baconjs.Observable<V>, Array<baconjs.Observable<V>>>>):baconjs.EventStream<Array<Array<V>>>;
	/**
		Repeats the single element indefinitely with the given interval (in milliseconds)
	**/
	static function interval<V>(delay:Float, value:V):baconjs.EventStream<V>;
	/**
		Creates a single-element stream that emits given value after given delay and ends.
	**/
	static function later<V>(delay:Float, value:V):baconjs.EventStream<V>;
	/**
		Creates an EventStream that immediately ends.
	**/
	static function never<V>():baconjs.EventStream<V>;
	/**
		A shorthand for combining multiple
		sources (streams, properties, constants) as array and assigning the
		side-effect function f for the values. The following example would log
		the number 3.
		
		```js
		function f(a, b) { console.log(a + b) }
		Bacon.onValues(Bacon.constant(1), Bacon.constant(2), f)
		```
	**/
	static function onValues(args:haxe.extern.Rest<Dynamic>):baconjs.Unsub;
	/**
		Creates an EventStream that delivers the given
		single value for the first subscriber. The stream will end immediately
		after this value. You can also send an [`Bacon.Error`](#bacon-error) event instead of a
		value: `Bacon.once(new Bacon.Error("fail"))`.
	**/
	static function once<V>(value:ts.AnyOf2<V, baconjs.Event_<V>>):baconjs.EventStream<V>;
	/**
		Calls generator function which is expected to return an observable. The returned EventStream contains
		values and errors from the spawned observable. When the spawned observable ends, the generator is called
		again to spawn a new observable.
		
		This is repeated until the generator returns a falsy value
		(such as `undefined` or `false`).
		
		The generator function is called with one argument — iteration number starting from `0`.
		
		Here's an example:
		
		```js
		Bacon.repeat(function(i) {
		if (i < 3) {
		  return Bacon.once(i);
		} else {
		  return false;
		}
		}).log()
		```
		
		The example will produce values 0, 1 and 2.
	**/
	static function repeat<V>(generator:(iteration:Float) -> Null<baconjs.Observable<V>>):baconjs.EventStream<V>;
	/**
		Repeats given elements indefinitely
		with given interval in milliseconds. For example, `repeatedly(10, [1,2,3])`
		would lead to `1,2,3,1,2,3...` to be repeated indefinitely.
	**/
	static function repeatedly<V>(delay:Float, values:Array<ts.AnyOf2<V, baconjs.Event_<V>>>):baconjs.EventStream<V>;
	/**
		Used to retry the call when there is an [`Error`](classes/error.html) event in the stream produced by the `source` function.
		
		```js
		var triggeringStream, ajaxCall // <- ajaxCall gives Errors on network or server errors
		ajaxResult = triggeringStream.flatMap(function(url) {
		    return Bacon.retry({
		        source: function(attemptNumber) { return ajaxCall(url) },
		        retries: 5,
		        isRetryable: function (error) { return error.httpStatusCode !== 404; },
		        delay: function(context) { return 100; } // Just use the same delay always
		    })
		})
		```
	**/
	static function retry<V>(options:baconjs.RetryOptions<V>):baconjs.EventStream<V>;
	/**
		Creates a stream containing given
		values (given as array). Delivered with given interval in milliseconds.
	**/
	static function sequentially<V>(delay:Float, values:Array<ts.AnyOf2<V, baconjs.Event_<V>>>):baconjs.EventStream<V>;
	/**
		Creates a stream that ends after given amount of milliseconds, without emitting any values.
	**/
	static function silence<V>(duration:Float):baconjs.EventStream<V>;
	/**
		Zips the array of EventStreams / Properties in to a new
		EventStream that will have an array of values from each source as
		its value. Zipping means that events from each source are combined
		pairwise so that the 1st event from each source is published first, then
		the 2nd event from each. The results will be published as soon as there
		is a value from each source.
		
		Be careful not to have too much "drift" between streams. If one stream
		produces many more values than some other excessive buffering will
		occur inside the zipped observable.
		
		Example:
		
		```js
		x = Bacon.fromArray([1,2,3])
		y = Bacon.fromArray([10, 20, 30])
		z = Bacon.fromArray([100, 200, 300])
		Bacon.zipAsArray(x, y, z)
		
		# produces values [1, 10, 100], [2, 20, 200] and [3, 30, 300]
		```
	**/
	static function zipAsArray<V>(args:haxe.extern.Rest<ts.AnyOf2<baconjs.Observable<V>, Array<baconjs.Observable<V>>>>):baconjs.Observable<Array<V>>;
	/**
		Like [`zipAsArray`](#bacon-zipasarray) but uses the given n-ary
		function to combine the n values from n sources, instead of returning them in an Array.
	**/
	static function zipWith<Out>(f:(any:haxe.extern.Rest<Dynamic>) -> Out, streams:haxe.extern.Rest<baconjs.Observable<Dynamic>>):baconjs.EventStream<Out>;
	/**
		Merges given array of EventStreams or Properties, by collecting the values from all of the sources into a single
		EventStream.
		
		See also [`merge`](classes/eventstream.html#merge).
	**/
	static function mergeAll<V>(streams:haxe.extern.Rest<ts.AnyOf2<baconjs.Observable<V>, Array<baconjs.Observable<V>>>>):baconjs.EventStream<V>;
	/**
		Reply for "more data, please".
	**/
	static var more : Dynamic;
	/**
		Reply for "no more data, please".
	**/
	static var noMore : Dynamic;
	/**
		Creates an EventStream from a Promise object such as JQuery Ajax.
		This stream will contain a single value or an error, followed immediately by stream end.
		You can use the optional abort flag (i.e. ´fromPromise(p, true)´ to have the `abort` method of the given promise be called when all subscribers have been removed from the created stream.
		You can also pass an optional function that transforms the promise value into Events. The default is to transform the value into `[new Bacon.Next(value), new Bacon.End()]`.
		Check out this [example](https://github.com/raimohanska/baconjs-examples/blob/master/resources/public/index.html).
	**/
	static function fromPromise<V>(promise:ts.lib.Promise<V>, ?abort:Bool, ?eventTransformer:baconjs.EventTransformer<V>):baconjs.EventStream<V>;
	/**
		Creates an EventStream from a function that
		accepts a callback. The function is supposed to call its callback just
		once. For example:
		
		```js
		Bacon.fromCallback(callback => callback("bacon"))
		```
		
		This would create a stream that outputs a single value "Bacon!" and ends
		after that. The use of setTimeout causes the value to be delayed by 1
		second.
		
		You can also give any number of arguments to [`fromCallback`](#bacon-fromcallback), which will be
		passed to the function. These arguments can be simple variables, Bacon
		EventStreams or Properties. For example the following will output "Bacon rules":
		
		```js
		bacon = Bacon.constant('bacon')
		Bacon.fromCallback(function(a, b, callback) {
		  callback(a + ' ' + b);
		}, bacon, 'rules').log();
		```
	**/
	static function fromCallback<V>(f:ts.lib.Function, args:haxe.extern.Rest<Dynamic>):baconjs.EventStream<V>;
	/**
		Behaves the same way as `Bacon.fromCallback`,
		except that it expects the callback to be called in the Node.js convention:
		`callback(error, data)`, where error is null if everything is fine. For example:
		
		```js
		var Bacon = require('baconjs').Bacon,
		fs = require('fs');
		var read = Bacon.fromNodeCallback(fs.readFile, 'input.txt');
		read.onError(function(error) { console.log("Reading failed: " + error); });
		read.onValue(function(value) { console.log("Read contents: " + value); });
		```
	**/
	static function fromNodeCallback<V>(f:ts.lib.Function, args:haxe.extern.Rest<Dynamic>):baconjs.EventStream<V>;
	/**
		Creates an EventStream from an
		[ES Observable](https://github.com/tc39/proposal-observable). Input can be any
		ES Observable implementation including RxJS and Kefir.
	**/
	static function fromESObservable<V>(_observable:Dynamic):baconjs.EventStream<V>;
	/**
		Returns true if the given event is a [Value](classes/value.html), i.e. a [Next](classes/next.html) or
		an [Initial](classes/error.html) value of an [Observable](classes/observable.html).
	**/
	static function hasValue<V>(e:baconjs.Event_<V>):Bool;
	/**
		Returns true if the given event is an [Error](classes/error.html) event of an [Observable](classes/observable.html).
	**/
	static function isError<V>(e:baconjs.Event_<V>):Bool;
	/**
		Returns true if the given event is an [End](classes/end.html)
	**/
	static function isEnd<V>(e:baconjs.Event_<V>):Bool;
	/**
		Returns true if the given event is an [Initial](classes/initial.html) value of a [Property](classes/property.html).
	**/
	static function isInitial<V>(e:baconjs.Event_<V>):Bool;
	/**
		Returns true if the given object is an [Event](classes/event.html).
	**/
	static function isEvent<V>(e:Dynamic):Bool;
	/**
		Returns true if the given event is a [Next](classes/next.html)
	**/
	static function isNext<V>(e:baconjs.Event_<V>):Bool;
	/**
		Adds your function as a "spy" that will get notified on all new Observables.
		This will allow a visualization/analytics tool to spy on all Bacon activity.
	**/
	static var spy : (spy:baconjs.Spy) -> Float;
	@:native("try")
	static function try_<In, Out>(f:(value:In) -> Out):(value:In) -> baconjs.EventStream<Out>;
	static function getScheduler():baconjs.Scheduler;
	static function setScheduler(newScheduler:baconjs.Scheduler):Void;
	static var _ : {
		var indexOf : (xs:Array<Any>, x:Any) -> Float;
		var indexWhere : (xs:Array<Any>, f:(x:Any) -> Bool) -> Float;
		var head : (xs:Array<Any>) -> Any;
		var always : (x:Any) -> (() -> Any);
		var negate : (f:(x:Any) -> Bool) -> ((x:Any) -> Bool);
		var empty : (xs:Array<Any>) -> Bool;
		var tail : (xs:Array<Any>) -> Array<Any>;
		var filter : (f:(a:Any) -> Bool, xs:Array<Any>) -> Array<Any>;
		var map : (f:(a:Any) -> Any, xs:Array<Any>) -> Array<Any>;
		var each : (xs:Dynamic, f:(key:String, x:Any) -> Dynamic) -> Void;
		var toArray : (xs:ts.AnyOf2<Any, Array<Any>>) -> Array<Any>;
		var contains : (xs:Array<Any>, x:Any) -> Bool;
		var id : (x:Any) -> Any;
		var last : (xs:Array<Any>) -> Any;
		var all : (xs:Array<Any>, f:(x:Any) -> Bool) -> Bool;
		var any : (xs:Array<Any>, f:(x:Any) -> Bool) -> Bool;
		var without : (x:Any, xs:Array<Any>) -> Array<Any>;
		var remove : (x:Any, xs:Array<Any>) -> Null<Array<Any>>;
		var fold : (xs:Array<Any>, seed:Any, f:(acc:Any, x:Any) -> Any) -> Any;
		var flatMap : (f:(x:Any) -> Array<Any>, xs:Array<Any>) -> Array<Any>;
		var bind : (fn:Any, me:Dynamic) -> Any;
		var isFunction : (f:Dynamic) -> Bool;
		var toFunction : (f:ts.AnyOf2<Any, (x:Any) -> Any>) -> ((x:Any) -> Any);
		var toString : (obj:Dynamic) -> String;
	};
	/**
		JQuery/Zepto integration support
	**/
	@:native("$")
	static var Dollar : {
		/**
			Creates an EventStream from events on a
			jQuery or Zepto.js object. You can pass optional arguments to add a
			jQuery live selector and/or a function that processes the jQuery
			event and its parameters, if given, like this:
			
			```js
			$("#my-div").asEventStream("click", ".more-specific-selector")
			$("#my-div").asEventStream("click", ".more-specific-selector", function(event, args) { return args[0] })
			$("#my-div").asEventStream("click", function(event, args) { return args[0] })
			```
			
			Note: you need to install the `asEventStream` method on JQuery by calling
			[init()](#_.aseventstream) as in `Bacon.$.init($)`.
		**/
		function asEventStream(eventName:String, selector:Null<String>, eventTransformer:Dynamic):baconjs.EventStream<Dynamic>;
		/**
			Installs the [asEventStream](#_.aseventstream) to the given jQuery/Zepto object (the `$` object).
		**/
		function init(jQuery:Dynamic):Void;
	};
	/**
		Creates a Property from an initial value and updates the value based on multiple inputs.
		The inputs are defined similarly to [`Bacon.when`](#bacon-when), like this:
		
		```js
		var result = Bacon.update(
		initial,
		[x,y,z, (previous,x,y,z) => { ... }],
		[x,y,   (previous,x,y) => { ... }])
		```
		
		As input, each function above will get the previous value of the `result` Property, along with values from the listed Observables.
		The value returned by the function will be used as the next value of `result`.
		
		Just like in [`Bacon.when`](#when), only EventStreams will trigger an update, while Properties will be just sampled.
		So, if you list a single EventStream and several Properties, the value will be updated only when an event occurs in the EventStream.
		
		Here's a simple gaming example:
		
		```js
		let scoreMultiplier = Bacon.constant(1)
		let hitUfo = Bacon.interval(1000)
		let hitMotherShip = Bacon.later(10000)
		let score = Bacon.update(
		0,
		[hitUfo, scoreMultiplier, (score, _, multiplier) => score + 100 * multiplier ],
		[hitMotherShip, (score, _) => score + 2000 ]
		)
		```
		
		In the example, the `score` property is updated when either `hitUfo` or `hitMotherShip` occur. The `scoreMultiplier` Property is sampled to take multiplier into account when `hitUfo` occurs.
	**/
	static function update<Out>(initial:Out, patterns:haxe.extern.Rest<baconjs.UpdatePattern<Out>>):baconjs.Property<Out>;
	/**
		Combines Properties, EventStreams and constant values so that the result Property will have an array of the latest
		values from all sources as its value. The inputs may contain both Properties and EventStreams.
		
		
		```js
		property = Bacon.constant(1)
		stream = Bacon.once(2)
		constant = 3
		Bacon.combineAsArray(property, stream, constant)
		# produces the value [1,2,3]
		```
	**/
	static function combineAsArray<V>(streams:haxe.extern.Rest<ts.AnyOf2<baconjs.Observable<V>, Array<baconjs.Observable<V>>>>):baconjs.Property<Array<V>>;
	/**
		Combines given *n* Properties,
		EventStreams and constant values using the given n-ary function `f(v1, v2 ...)`.
		
		To calculate the current sum of three numeric Properties, you can do
		
		```js
		function sum3(x,y,z) { return x + y + z }
		Bacon.combineWith(sum3, p1, p2, p3)
		```
	**/
	static function combineWith<Out>(f:(args:haxe.extern.Rest<Dynamic>) -> Out, streams:haxe.extern.Rest<baconjs.Observable<Dynamic>>):baconjs.Property<Out>;
	static function combine<V, V2, R>(left:baconjs.Observable<V>, right:baconjs.Observable<V2>, f:baconjs.Function2<V, V2, R>):baconjs.Property<R>;
	static var nullSink : baconjs.Sink<Dynamic>;
	static var nullVoidSink : baconjs.VoidSink;
}