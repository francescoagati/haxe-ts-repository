package react;
/**
	Ensures that the props do not include string ref, which cannot be forwarded
**/
typedef PropsWithRef<P> = Dynamic;