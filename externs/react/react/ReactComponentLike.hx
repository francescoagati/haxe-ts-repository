package react;
typedef ReactComponentLike = ts.AnyOf3<String, ts.AnyOf2<(props:Dynamic) -> Dynamic, (props:Dynamic, context:Dynamic) -> Dynamic>, { }>;