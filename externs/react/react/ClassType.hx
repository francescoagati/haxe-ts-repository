package react;
/**
	We use an intersection type to infer multiple type parameters from
	a single argument, which is useful for many top-level API defs.
	See https://github.com/Microsoft/TypeScript/issues/7234 for more info.
**/
typedef ClassType<P, T, C> = Dynamic;