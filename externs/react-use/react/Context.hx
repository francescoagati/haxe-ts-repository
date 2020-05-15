package react;
typedef Context<T> = {
	var Provider : Provider<T>;
	var Consumer : Consumer<T>;
	@:optional
	var displayName : String;
};