package react;
typedef Reducer<S, A> = (prevState:S, action:A) -> S;