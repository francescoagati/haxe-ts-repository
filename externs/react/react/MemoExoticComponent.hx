package react;
typedef MemoExoticComponent<T> = NamedExoticComponent<ComponentPropsWithRef<T>> & {
	final type : T;
};