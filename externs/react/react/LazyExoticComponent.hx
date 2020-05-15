package react;
typedef LazyExoticComponent<T> = ExoticComponent<ComponentPropsWithRef<T>> & {
	final _result : T;
};