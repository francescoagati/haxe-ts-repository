package formik;
/**
	Formik actions + { props }
**/
typedef FormikBag<P, V> = {
	var props : P;
} & FormikHelpers<V>;