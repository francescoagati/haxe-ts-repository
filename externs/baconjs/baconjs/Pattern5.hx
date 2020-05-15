package baconjs;
/**
	Join pattern consisting of a 5 Observables and a combinator function. At least one of the Observables must be an EventStream.
**/
typedef Pattern5<I1, I2, I3, I4, I5, O> = ts.Tuple6<ObservableOrSource<I1>, ObservableOrSource<I1>, ObservableOrSource<I3>, ObservableOrSource<I4>, ObservableOrSource<I5>, ts.AnyOf2<O, (a:I1, b:I2, c:I3, d:I4, e:I5) -> O>>;