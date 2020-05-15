package constate;
typedef ContextHookObject<P, V> = {
	var Context : constate.react.Context<V>;
	var Provider : constate.react.FunctionComponent<P>;
};