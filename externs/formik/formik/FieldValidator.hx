package formik;
typedef FieldValidator = (value:Dynamic) -> ts.AnyOf3<String, Void, ts.lib.Promise<ts.AnyOf2<String, Void>>>;