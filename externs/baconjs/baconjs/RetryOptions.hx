package baconjs;
/**
	Options object for [Bacon.retry](../globals.html#retry).
**/
typedef RetryOptions<V> = {
	/**
		Required. A function that produces an Observable. The function gets attempt number (starting from zero) as its argument.
	**/
	var source : (attemptNumber:Float) -> Observable<V>;
	/**
		Required. The number of times to retry the `source` function _in addition to the initial attempt_. The default value is 0 (zero) for retrying indefinitely.
	**/
	@:optional
	var retries : Float;
	/**
		Optional. A function that returns the time in milliseconds to wait before retrying. Defaults to `0`. The function is given a context object with the keys ```error``` (the error that occurred) and `retriesDone` (the number of retries already performed) to help determine the appropriate delay e.g. for an incremental backoff.
	**/
	@:optional
	function delay(context:RetryContext):Float;
	/**
		Optional. A function returning `true` to continue retrying, `false` to stop. Defaults to `true`. The error that occurred is given as a parameter. For example, there is usually no reason to retry a 404 HTTP error, whereas a 500 or a timeout might work on the next attempt.
	**/
	@:optional
	function isRetryable(error:Dynamic):Bool;
};