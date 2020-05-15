package rxjs;
typedef GenerateOptions<T, S> = {
	/**
		Result selection function that accepts state and returns a value to emit.
	**/
	var resultSelector : rxjs.ResultFunc<S, T>;
	/**
		Initial state.
	**/
	var initialState : S;
	/**
		Condition function that accepts state and returns boolean.
		When it returns false, the generator stops.
		If not specified, a generator never stops.
	**/
	@:optional
	var condition : rxjs.ConditionFunc<S>;
	/**
		Iterate function that accepts state and returns new state.
	**/
	var iterate : rxjs.IterateFunc<S>;
	/**
		SchedulerLike to use for generation process.
		By default, a generator starts immediately.
	**/
	@:optional
	var scheduler : rxjs.SchedulerLike;
};