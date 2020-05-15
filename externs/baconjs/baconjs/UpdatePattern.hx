package baconjs;
/**
	[Update](#update) pattern type, allowing up to 6 sources per pattern.
**/
typedef UpdatePattern<O> = ts.AnyOf6<UpdatePattern1<Dynamic, O>, UpdatePattern2<Dynamic, Dynamic, O>, UpdatePattern3<Dynamic, Dynamic, Dynamic, O>, UpdatePattern4<Dynamic, Dynamic, Dynamic, Dynamic, O>, UpdatePattern5<Dynamic, Dynamic, Dynamic, Dynamic, Dynamic, O>, UpdatePattern6<Dynamic, Dynamic, Dynamic, Dynamic, Dynamic, Dynamic, O>>;