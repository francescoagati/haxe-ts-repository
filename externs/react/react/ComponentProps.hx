package react;
/**
	NOTE: prefer ComponentPropsWithRef, if the ref is forwarded,
	or ComponentPropsWithoutRef when refs are not supported.
**/
typedef ComponentProps<T> = Dynamic;