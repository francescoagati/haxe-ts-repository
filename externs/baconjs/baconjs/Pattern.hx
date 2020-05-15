package baconjs;
/**
	Join pattern type, allowing up to 6 sources per pattern.
**/
typedef Pattern<O> = ts.AnyOf7<Pattern1<Dynamic, O>, Pattern2<Dynamic, Dynamic, O>, Pattern3<Dynamic, Dynamic, Dynamic, O>, Pattern4<Dynamic, Dynamic, Dynamic, Dynamic, O>, Pattern5<Dynamic, Dynamic, Dynamic, Dynamic, Dynamic, O>, Pattern6<Dynamic, Dynamic, Dynamic, Dynamic, Dynamic, Dynamic, O>, RawPattern>;