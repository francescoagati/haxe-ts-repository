@:jsRequire("use-immer") @valueModuleOnly extern class Use_immer {
	static function useImmer<S>(initialValue:ts.AnyOf2<S, () -> S>):ts.Tuple2<S, (f:(draft:use_immer.Draft<S>) -> ts.AnyOf2<Void, S>) -> Void>;
	static function useImmerReducer<S, A>(reducer:use_immer.Reducer<S, A>, initialState:S, ?initialAction:(initial:Dynamic) -> S):ts.Tuple2<S, use_immer.react.Dispatch<A>>;
}