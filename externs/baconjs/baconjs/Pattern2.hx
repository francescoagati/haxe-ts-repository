package baconjs;
/**
	Join pattern consisting of a 2 Observables and a combinator function. At least one of the Observables must be an EventStream.
**/
typedef Pattern2<I1, I2, O> = ts.Tuple3<ObservableOrSource<I1>, ObservableOrSource<I1>, ts.AnyOf2<O, (a:I1, b:I2) -> O>>;