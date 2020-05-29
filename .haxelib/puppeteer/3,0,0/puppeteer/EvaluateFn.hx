package puppeteer;

typedef EvaluateFn<T> = ts.AnyOf2<String, (arg1:T, args:haxe.extern.Rest<Dynamic>) -> Dynamic>;