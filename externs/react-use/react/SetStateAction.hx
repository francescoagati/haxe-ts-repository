package react;
typedef SetStateAction<S> = ts.AnyOf2<S, (prevState:S) -> S>;